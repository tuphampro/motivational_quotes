// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../utils/ad_helper.dart';

class AdsController extends GetxController {
  Rx<BannerAd?> bannerAd = Rx(null);
  Rx<RewardedAd?> rewardedAd = Rx(null);

  @override
  onClose() async {
    bannerAd.value?.dispose();
    rewardedAd.value?.dispose();

    super.onClose();
  }

  loadBannerAd() {
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          bannerAd.value = ad as BannerAd;
        },
        onAdFailedToLoad: (ad, err) {
          if (Get.isDialogOpen == false) {
            // Get.dialog(
            //   AlertDialog(
            //     title: const Text('Alert'),
            //     content: SingleChildScrollView(
            //       child: ListBody(
            //         children: [
            //           Text(err.message),
            //         ],
            //       ),
            //     ),
            //   ),
            // );
          }
          ad.dispose();
        },
      ),
    ).load();
  }

  loadRewardedAd() {
    RewardedAd.load(
      adUnitId: AdHelper.rewardedAdUnitId,
      request: AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              rewardedAd.value = null;
              loadRewardedAd();
            },
          );

          rewardedAd.value = ad;
        },
        onAdFailedToLoad: (err) {
          if (Get.isDialogOpen == false) {
            // Get.dialog(
            //   AlertDialog(
            //     title: const Text('Alert'),
            //     content: SingleChildScrollView(
            //       child: ListBody(
            //         children: [
            //           Text(err.message),
            //         ],
            //       ),
            //     ),
            //   ),
            // );
          }
        },
      ),
    );
  }
}

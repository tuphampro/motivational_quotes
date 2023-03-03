// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:motivational_quotes/views/controller/quotes_controller.dart';
import 'package:motivational_quotes/views/pages/quotes/index.dart';

import '../../controller/ads_controller.dart';
import 'quotes_app.dart';

class MainBody extends StatelessWidget {
  MainBody({super.key}) {
    adsController.loadBannerAd();
  }

  final adsController = Get.put(AdsController());
  final quotesController = Get.put(QuotesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.15,
        title: Text(
          "Motivational Quotes",
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.blue),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            visualDensity: VisualDensity.comfortable,
          ),
          IconButton(
            onPressed: () {
              quotesController.toggleViewStyle();
            },
            icon: Icon(Icons.space_dashboard),
            visualDensity: VisualDensity.comfortable,
          ),
          IconButton(
              onPressed: () {
                drawerController.toggle!();
              },
              visualDensity: VisualDensity.comfortable,
              icon: Icon(Icons.settings)),
        ],
      ),
      body: QuotesPage(),
      bottomSheet: Obx(
        () => adsController.bannerAd.value != null
            ? Container(
                height: adsController.bannerAd.value?.size.height.toDouble(),
                alignment: Alignment.center,
                child: SizedBox(
                  width: adsController.bannerAd.value?.size.width.toDouble(),
                  height: adsController.bannerAd.value?.size.height.toDouble(),
                  child: AdWidget(ad: adsController.bannerAd.value!),
                ),
              )
            : SizedBox(),
      ),
    );
  }
}

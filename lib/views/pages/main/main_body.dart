// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:share_plus/share_plus.dart';

import '../../controller/ads_controller.dart';
import 'quotes_app.dart';

class MainBody extends StatelessWidget {
  MainBody({super.key}) {
    adsController.loadBannerAd();
  }

  final adsController = Get.put(AdsController());

  Widget? itemBuilder(BuildContext context, int index) {
    return InkWell(
      onTap: () {
        print("object");
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        padding: const EdgeInsets.only(
            top: 14.0, right: 14.0, left: 14.0, bottom: 4),
        decoration: BoxDecoration(
            color: Colors.white,
            // image: Icon(icon),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 6,
                offset: Offset(0, 6), // Shadow position
              )
            ],
            border: Border.all(color: Colors.grey.shade100, width: 1),
            borderRadius: BorderRadius.all(
                Radius.circular(6.0) //                 <--- border radius here
                )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Tiền không mua được tất cả nhưng không có tiền thì vất vả, thế thôi",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Text(
                  "-Nelson Mandela -",
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.grey.shade600),
                )),
                IconButton(
                    onPressed: () {
                      print("object");
                    },
                    icon: Icon(Icons.favorite_border),
                    iconSize: 16,
                    visualDensity: VisualDensity.compact),
                IconButton(
                    onPressed: () async {
                      await Clipboard.setData(ClipboardData(text: "your text"));
                    },
                    icon: Icon(Icons.copy),
                    iconSize: 16,
                    visualDensity: VisualDensity.compact),
                IconButton(
                    onPressed: () {
                      Share.share(
                          'Tiền không mua được tất cả nhưng không có tiền thì vất vả, thế thôi',
                          subject: 'Motivational Quotes');
                    },
                    icon: Icon(Icons.share),
                    iconSize: 16,
                    visualDensity: VisualDensity.compact),
              ],
            )
          ],
        ),
      ),
    );
  }

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
            onPressed: () {},
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
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: itemBuilder,
        itemCount: 10,
        primary: true,
        padding: EdgeInsets.all(20),
      ),
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

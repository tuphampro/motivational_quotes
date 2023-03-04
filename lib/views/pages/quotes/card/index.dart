// ignore_for_file: prefer_const_constructors

import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:motivational_quotes/views/controller/quotes_controller.dart';

class CardQuotesPage extends GetView<QuotesController> {
  const CardQuotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 60),
      child: AppinioSwiper(
        unlimitedUnswipe: false,
        allowUnswipe: true,
        direction: AppinioSwiperDirection.right,
        maxAngle: 40,
        controller: controller.swiperController,
        unswipe: controller.unswipe,
        cards: controller.cards,
        onSwipe: controller.swipe,
        onEnd: controller.onEnd,
      ),
    );
  }
}

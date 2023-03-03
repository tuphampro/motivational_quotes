import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:motivational_quotes/views/controller/quotes_controller.dart';

class CardQuotesPage extends GetView<QuotesController> {
  final AppinioSwiperController swiperController = AppinioSwiperController();

  CardQuotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Obx(
        () => AppinioSwiper(
          unlimitedUnswipe: true,
          controller: swiperController,
          unswipe: controller.unswipe,
          cards: controller.cards,
          onSwipe: controller.swipe,
          // padding: const EdgeInsets.only(
          //   left: 25,
          //   right: 25,
          //   top: 50,
          //   bottom: 40,
          // ),
        ),
      ),
    );
  }
}

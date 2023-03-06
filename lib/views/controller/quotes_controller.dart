// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:math';

import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:motivational_quotes/core/models/app/quote.dart';
import 'package:motivational_quotes/views/pages/quotes/card/gradients.dart';
import 'package:motivational_quotes/views/utils/enums.dart';
import 'package:motivational_quotes/views/utils/storage_keys.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/repository/quotes.dart';
import '../../injector/injector.dart';
import '../pages/quotes/card/quote_card_view.dart';

class QuotesController extends GetxController {
  final _quotesRepository = getIt<QuotesRepository>();
  final listData = RxList<QuoteModel>([]);
  final loading = false.obs;
  final viewStyle = QuotesViewStyle.list.obs;
  final cards = RxList<QuoteCardView>([]);
  AppinioSwiperController? swiperController;
  Timer? intervalTimer;

  @override
  onInit() async {
    super.onInit();
    getViewStyle();
    getQuotes();
    // play();
  }

  getViewStyle() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getString(StorageKeys.QUOTE_VIEW_STYLE);
    if (value != null) viewStyle.value = QuotesViewStyle.values.byName(value);

    if (viewStyle.value == QuotesViewStyle.card) loadCards();
  }

  getQuotes() async {
    final quote = QuoteModel(
      content: "The way to get started is to quit talking and begin doing",
      author: "Walt Disney",
      favorite: false,
      id: "1",
    );

    final quote2 = QuoteModel(
      content:
          "Ước mơ mà không kèm theo hành động thì dù hi vọng có cánh cũng không bao giờ bay tới đích",
      author: "Shakespeare",
      favorite: false,
      id: "1",
    );

    final quote3 = QuoteModel(
      content: "Cách báo thù tốt nhất chính là thành công vang dội",
      author: "Frank Sinatra",
      favorite: false,
      id: "1",
    );

    final quote4 = QuoteModel(
      content:
          "Thà làm một bông hoa sen nở khi thấy mặt trời bị mất hết nhụy còn hơn giữ nguyên hình nụ búp trong sương lạnh vĩnh cửu của mùa đông.",
      author: "R.Ta-go",
      favorite: false,
      id: "1",
    );

    final quote5 = QuoteModel(
      content:
          "Khi bạn có tiền trong tay chỉ có bạn quên mất mình là ai. Nhưng khi bạn không có đồng nào cả, cả thế giới sẽ quên đi bạn là ai, đó là cuộc sống.",
      author: "Bill Gates",
      favorite: false,
      id: "1",
    );

    final quote6 = QuoteModel(
      content:
          "Ước mơ mà không kèm theo hành động thì dù hi vọng có cánh cũng không bao giờ bay tới đích",
      author: "Shakespeare",
      favorite: false,
      id: "1",
    );

    //
    listData.value = [quote, quote2, quote3, quote4, quote5, quote6];
    // loading.value = true;
    // final coupons = await _quotesRepository.getQuotes();
    // loading.value = false;

    // coupons.fold(
    //   (l) => print(l), // Get.dialog(AppDialog()),
    //   (r) {
    //     listData.value = r;
    //   },
    // );
  }

  toggleViewStyle() async {
    if (viewStyle.value == QuotesViewStyle.card) {
      viewStyle.value = QuotesViewStyle.list;
      cards.clear();
      intervalTimer?.cancel();
    } else {
      viewStyle.value = QuotesViewStyle.card;
      loadCards();
    }

    final prefs = await SharedPreferences.getInstance();
    prefs.setString(StorageKeys.QUOTE_VIEW_STYLE, viewStyle.value.name);
  }

  favorite() {}

  copy(String content) async {
    await Clipboard.setData(ClipboardData(text: content));
  }

  share(String content) {
    Share.share(content, subject: 'Motivational Quotes');
  }

  // Card
  loadCards() {
    swiperController ??= AppinioSwiperController();

    intervalTimer = Timer.periodic(Duration(seconds: 45), (timer) {
      swiperController?.swipe();
    });

    Random random = Random();

    for (var quote in listData) {
      int randomNumber = random.nextInt(listGradients.length);

      quote.color = listGradients[randomNumber];

      cards.add(
        QuoteCardView(quoteModel: quote),
      );
    }
  }

  swipe(int index, AppinioSwiperDirection direction) {}

  unswipe(bool unswiped) {
    if (unswiped) {
    } else {}
  }

  play() async {
    final player = AudioPlayer(); // Create a player
    final duration = await player.setAsset(// Load a URL
        'assets/audios/StarSky_TwoStepsFromHell.mp3'); // Schemes: (https: | file: | asset: )
    // player.play(); // Play without waiting for completion
    await player.setLoopMode(LoopMode.all);
    await player.play();
  }

  onEnd() {
    // intervalTimer?.cancel();
    // swiperController?.unswipe();
    // intervalTimer = Timer.periodic(Duration(seconds: 45), (timer) {
    //   swiperController?.unswipe();
    // });
  }

  aboutAuthor(QuoteModel quoteModel) async {
    if (quoteModel.author == null) return;

    final url =
        Uri.parse("https://www.google.com/search?q=${quoteModel.author}");

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }
  //
}

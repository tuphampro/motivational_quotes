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
import 'package:html/parser.dart';

import '../../data/repository/quotes.dart';
import '../../injector/injector.dart';
import '../pages/quotes/card/quote_card_view.dart';

class QuotesController extends GetxController {
  final _quotesRepository = getIt<QuotesRepository>();
  final loading = false.obs;
  final viewStyle = QuotesViewStyle.list.obs;
  final listData = RxList<QuoteModel>([]);
  final cards = RxList<QuoteCardView>([]);
  AppinioSwiperController? swiperController;
  Timer? intervalTimer;

  @override
  onInit() async {
    super.onInit();
    getViewStyle();
    getQuotes();
    play();
  }

  getViewStyle() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getString(StorageKeys.QUOTE_VIEW_STYLE);
    if (value != null) viewStyle.value = QuotesViewStyle.values.byName(value);
  }

  getQuotes() async {
    loading.value = true;
    final quotes = await _quotesRepository.getQuotes();
    loading.value = false;

    quotes.fold(
      (l) => print(l), // Get.dialog(AppDialog()),
      (r) {
        listData.value = r;
        if (viewStyle.value == QuotesViewStyle.card) loadCards();
      },
    );
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

  String? parseHtmlString(String htmlString) {
    final document = parse(htmlString);
    final parsedString = parse(document.body?.text).documentElement?.text;

    return parsedString;
  }

  favorite() {}

  copy(String content) async {
    if (content.isNotEmpty) {
      await Clipboard.setData(ClipboardData(text: parseHtmlString(content)));
    }
  }

  share(String content) {
    if (content.isNotEmpty) {
      Share.share(parseHtmlString(content)!, subject: 'Motivational Quotes');
    }
  }

  // Card
  loadCards() {
    cards.value = [];

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

    cards.refresh();
  }

  swipe(int index, AppinioSwiperDirection direction) {}

  unswipe(bool unswiped) {
    if (unswiped) {
    } else {}
  }

  play() async {
    final player = AudioPlayer();
    final duration = await player.setAsset(// Load a URL
        'assets/audios/StarSky_TwoStepsFromHell.mp3');

    await player.setLoopMode(LoopMode.all);
    await player.setVolume(0.5);
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

// ignore_for_file: prefer_const_constructors

import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:motivational_quotes/core/models/app/quote.dart';
import 'package:motivational_quotes/views/utils/enums.dart';
import 'package:motivational_quotes/views/utils/storage_keys.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/repository/quotes.dart';
import '../../injector/injector.dart';
import '../pages/quotes/card/quote_candidate_model.dart';
import '../pages/quotes/card/quote_card_view.dart';

class QuotesController extends GetxController {
  final _quotesRepository = getIt<QuotesRepository>();
  final listData = RxList<QuoteModel>([]);
  final loading = false.obs;
  final viewStyle = QuotesViewStyle.list.obs;
  final cards = RxList<QuoteCardView>([]);

  @override
  onInit() async {
    super.onInit();
    getViewStyle();
    getQuotes();
    loadCards();
  }

  getViewStyle() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(
        StorageKeys.QUOTE_VIEW_STYLE, QuotesViewStyle.list.toString());
    final value = prefs.getString(StorageKeys.QUOTE_VIEW_STYLE);
    if (value != null) viewStyle.value = QuotesViewStyle.values.byName(value);
  }

  getQuotes() async {
    final quote = QuoteModel(content: "", favorite: false, id: "1");
    listData.value = [quote, quote, quote, quote, quote, quote, quote, quote];
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

  toggleViewStyle() {
    if (viewStyle.value == QuotesViewStyle.card) {
      viewStyle.value = QuotesViewStyle.list;
      cards.clear();
    } else {
      viewStyle.value = QuotesViewStyle.card;
    }
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
    for (var quote in listData) {
      cards.add(
        QuoteCardView(quoteModel: quote),
      );
    }
    cards.refresh();
  }

  void swipe(int index, AppinioSwiperDirection direction) {}

  void unswipe(bool unswiped) {
    if (unswiped) {
    } else {}
  }
  //
}

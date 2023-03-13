// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motivational_quotes/views/pages/quotes/header.dart';
import 'package:motivational_quotes/views/utils/enums.dart';

import '../../controller/quotes_controller.dart';
import 'card/index.dart';
import 'list/index.dart';

class QuotesPage extends GetView<QuotesController> {
  const QuotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderQuotes(),
        Expanded(
          child: Obx(
            () {
              switch (controller.viewStyle.value) {
                case QuotesViewStyle.card:
                  return CardQuotesPage();

                case QuotesViewStyle.list:
                default:
                  return ListQuotesPage();
              }
            },
          ),
        )
      ],
    );
  }
}

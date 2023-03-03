// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motivational_quotes/core/models/app/quote.dart';
import 'package:motivational_quotes/views/controller/quotes_controller.dart';

class QuoteCardView extends GetView<QuotesController> {
  final QuoteModel quoteModel;

  const QuoteCardView({Key? key, required this.quoteModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CupertinoColors.white,
        boxShadow: [
          BoxShadow(
            color: CupertinoColors.systemGrey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: quoteModel.color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      quoteModel.content,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 28,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      quoteModel.author ?? "",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.smart_display),
                    visualDensity: VisualDensity.compact),
                IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.volume_up),
                    visualDensity: VisualDensity.compact),
                IconButton(
                    onPressed: () => controller.favorite(),
                    icon: Icon(Icons.favorite_border),
                    visualDensity: VisualDensity.compact),
                IconButton(
                    onPressed: () => controller.copy(quoteModel.content),
                    icon: Icon(Icons.copy),
                    visualDensity: VisualDensity.compact),
                IconButton(
                    onPressed: () => controller.share(quoteModel.content),
                    icon: Icon(Icons.share),
                    visualDensity: VisualDensity.compact),
              ],
            ),
          )
        ],
      ),
    );
  }
}

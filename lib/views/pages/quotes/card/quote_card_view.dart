// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
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
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bill_gates_2.jpg"),
        ),
        boxShadow: [
          BoxShadow(
            color: CupertinoColors.systemGrey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(24),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.format_quote,
                      color: Colors.white70,
                      size: 40,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Html(
                      data: quoteModel.content.trim(),
                      style: {
                        "p": Style(
                          fontSize: FontSize.xxLarge,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.justify,
                        ),
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: Get.width - 80,
                      child: InkWell(
                        onTap: () => controller.aboutAuthor(quoteModel),
                        child: Text(
                          quoteModel.author?.isNotEmpty == true
                              ? "- ${quoteModel.author} -"
                              : "",
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
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
                if (quoteModel.video?.isNotEmpty == true)
                  IconButton(
                      onPressed: () => {},
                      icon: Icon(Icons.smart_display),
                      visualDensity: VisualDensity.compact),
                if (quoteModel.audio?.isNotEmpty == true)
                  IconButton(
                      onPressed: () => {},
                      icon: Icon(Icons.volume_up),
                      visualDensity: VisualDensity.compact),
                IconButton(
                    onPressed: () => controller.favorite(),
                    icon: Icon(Icons.thumb_up_off_alt),
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

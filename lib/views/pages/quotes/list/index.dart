// ignore_for_file: prefer_const_constructors, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:motivational_quotes/views/controller/quotes_controller.dart';

class ListQuotesPage extends GetView<QuotesController> {
  const ListQuotesPage({super.key});

  Widget itemBuilder(BuildContext context, int index) {
    final quote = controller.listData[index];

    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
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
      child: InkWell(
        enableFeedback: true,
        onTap: () => {},
        child: Stack(
          children: [
            Image.asset(
              "assets/images/left-quote.png",
              height: 48,
            ),
            Container(
              color: Colors.white.withOpacity(0.48),
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Html(data: quote.content.trim(), style: {
                    "p": Style(
                        fontSize: FontSize.large, textAlign: TextAlign.justify),
                  }),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text(
                        quote.author ?? "",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey.shade600),
                      )),
                      if (quote.audio?.isNotEmpty == true)
                        IconButton(
                            onPressed: () => {},
                            icon: Icon(Icons.volume_up),
                            iconSize: 16,
                            visualDensity: VisualDensity.compact),
                      IconButton(
                          onPressed: () => controller.favorite(),
                          icon: Icon(Icons.favorite_border),
                          iconSize: 16,
                          visualDensity: VisualDensity.compact),
                      IconButton(
                          onPressed: () => controller.copy(quote.content),
                          icon: Icon(Icons.copy),
                          iconSize: 16,
                          visualDensity: VisualDensity.compact),
                      IconButton(
                          onPressed: () => controller.share(quote.content),
                          icon: Icon(Icons.share),
                          iconSize: 16,
                          visualDensity: VisualDensity.compact),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.loading == true
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              shrinkWrap: true,
              itemBuilder: itemBuilder,
              itemCount: controller.listData.length,
              primary: true,
              padding: EdgeInsets.all(20),
            ),
    );
  }
}

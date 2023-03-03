// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motivational_quotes/views/controller/quotes_controller.dart';

class ListQuotesPage extends GetView<QuotesController> {
  const ListQuotesPage({super.key});

  Widget itemBuilder(BuildContext context, int index) {
    final quote = controller.listData[index];

    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding:
          const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0, bottom: 6),
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
      child: InkWell(
        enableFeedback: true,
        onTap: () => {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              quote.content,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Text(
                  quote.author ?? "",
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.grey.shade600),
                )),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: itemBuilder,
      itemCount: controller.listData.length,
      primary: true,
      padding: EdgeInsets.all(20),
    );
  }
}

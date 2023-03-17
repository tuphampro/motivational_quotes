// ignore_for_file: prefer_const_constructors, unrelated_type_equality_checks, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:motivational_quotes/views/controller/quotes_controller.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ListQuotesPage extends GetView<QuotesController> {
  ListQuotesPage({super.key});
  RefreshController refreshController =
      RefreshController(initialRefresh: false);

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

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => SmartRefresher(
          enablePullDown: true,
          enablePullUp: true,
          header: WaterDropMaterialHeader(),
          controller: refreshController,
          footer: CustomFooter(
            builder: (context, mode) {
              Widget body;
              if (mode == LoadStatus.idle) {
                body = Text("pull up load");
              } else if (mode == LoadStatus.loading) {
                body = CupertinoActivityIndicator();
              } else if (mode == LoadStatus.failed) {
                body = Text("Load Failed!Click retry!");
              } else if (mode == LoadStatus.canLoading) {
                body = Text("release to load more");
              } else {
                body = Text("No more Data");
              }
              return SizedBox(
                height: 55.0,
                child: Center(child: body),
              );
            },
          ),
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          child: ListView.builder(
            controller: controller.scrollController,
            shrinkWrap: true,
            itemBuilder: itemBuilder,
            itemCount: controller.listData.length,
            padding: EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}

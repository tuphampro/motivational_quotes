// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motivational_quotes/views/controller/category_controller.dart';

class HeaderQuotes extends StatelessWidget {
  HeaderQuotes({super.key});
  final controller = Get.put(CategoryController());

  headerItem(String text, {bool? selected}) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Text(text),
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          color: selected == true ? Colors.grey.shade500 : Colors.grey.shade300,
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Obx(
        () => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: controller.listData
                .map<Widget>((element) => headerItem(element.name))
                .toList(),
          ),
        ),
      ),
    );
  }
}

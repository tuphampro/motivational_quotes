// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class HeaderQuotes extends StatelessWidget {
  const HeaderQuotes({super.key});

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
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            headerItem("Tất cả", selected: true),
            headerItem("Bản thân"),
            headerItem("Tình yêu"),
            headerItem("Tình bạn"),
            headerItem("Nhân cách sống"),
            headerItem("Giá trị cuộc sống"),
            headerItem("Tình yêu"),
            headerItem("Gia đình"),
            headerItem("Vợ chồng"),
            headerItem("Đoàn kết"),
          ],
        ),
      ),
    );
  }
}

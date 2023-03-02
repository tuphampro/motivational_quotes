// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: SizedBox(
        height: Get.size.height * 0.35,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'What do you want to remember?'),
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Flexible(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

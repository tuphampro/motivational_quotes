// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'quotes_app.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ListView(
            primary: true,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: Text(
                  'Motivational Quotes',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.people),
                visualDensity: VisualDensity.compact,
                title: const Text('Tài khoản'),
                onTap: () {
                  // drawerController.toggle!();
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                visualDensity: VisualDensity.compact,
                title: const Text('Cài đặt'),
                onTap: () {
                  // drawerController.toggle!();
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                visualDensity: VisualDensity.compact,
                title: const Text('Đã thích'),
                onTap: () {
                  // drawerController.toggle!();
                },
              ),
              ListTile(
                leading: Icon(Icons.block),
                visualDensity: VisualDensity.compact,
                title: const Text('Bỏ quảng cáo'),
                onTap: () {
                  // drawerController.toggle!();
                },
              ),
              // const SizedBox(height: 100),
              // ListTile(
              //   title: const Text(
              //     'Phiên bản 1.0',
              //     textAlign: TextAlign.center,
              //   ),
              //   onTap: () {
              //     drawerController.toggle!();
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

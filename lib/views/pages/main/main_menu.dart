import 'package:flutter/material.dart';

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
                child: Text(''),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  drawerController.toggle!();
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  drawerController.toggle!();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

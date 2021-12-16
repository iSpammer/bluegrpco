import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'drawer_title.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
          appBar: PreferredSize(

            preferredSize: Size.fromHeight(144),
            child: DrawerHeader(child: Container(
              color: Colors.transparent,
            )),
          ),
          body: Column(
            children: [
              DrawerTile(
                title: 'Notifications',
              ),
              DrawerTile(
                title: 'Logbook',
                function: () {
                  Get.toNamed("/detail");
                },
              ),
              DrawerTile(
                bgColor: Colors.red,
                icon: Icons.bar_chart,
                title: 'Statistics',
              ),
              DrawerTile(
                title: 'John Amack',
              ),
              DrawerTile(
                title: 'Dive Shop',
                icon: Icons.lightbulb,
              ),
              DrawerTile(
                title: 'Settings',
              ),
              DrawerTile(
                title: 'Rate Us',
                icon: Icons.favorite_border_outlined,
              ),
            ],
          ),
          bottomNavigationBar: Container(
            height: 120,
            child: Column(
              children: [
                ListTile(
                  title: Text("Logout"),
                ),
                ListTile(
                  title: Text(
                    "v0.1",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

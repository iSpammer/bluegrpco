import 'package:bluegrpco/views/detail/binding/detail_binding.dart';
import 'package:bluegrpco/views/detail/view/detail_page.dart';
import 'package:bluegrpco/views/home/binding/home_binding.dart';
import 'package:bluegrpco/views/home/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: "/home", page: ()=>HomeScreen(), binding: HomeBinding()),
        GetPage(name: "/detail", page: ()=>DetailScreen(), binding: DetailBinding())
      ],
    initialRoute: "/home",
    );
  }
}


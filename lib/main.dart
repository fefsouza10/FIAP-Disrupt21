import 'package:Dsrpt21/pages/factoryPage.dart';
import 'package:Dsrpt21/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    getPages: [
      GetPage(name: "/", page: () => HomePage()),
      GetPage(name: "/factoryPage", page: () => FactoryPage()),
      //GetPage(name: "/", page: ()=> HomePage()),
      //GetPage(name: "/", page: ()=> HomePage()),
    ],
  ));
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dsrpt21"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Seja bem-vindo à fábrica de robôs!\n",
              ),
            ),
            FlatButton(
                child: Text("CONSTRUIR NOVA REMESSA",
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Get.toNamed("/factoryPage");
                },
                color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

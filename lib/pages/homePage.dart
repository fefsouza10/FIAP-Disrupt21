import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/robots/background4.jpg"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Dsrpt21"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[600]),
                child: Text(
                  "\n     Seja bem-vindo à fábrica de robôs!     \n",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
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
      ),
    );
  }
}

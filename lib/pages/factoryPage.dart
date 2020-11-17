import 'dart:ui';

import 'package:Dsrpt21/controllers/shippingController.dart';
import 'package:Dsrpt21/pages/shippingPage.dart';
import 'package:Dsrpt21/widgets/robotWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

class FactoryPage extends StatelessWidget {
  //_FactoryPageState() => _FactoryPageState();
  //int group = 0;
  //var group = Get.find<ShippingController>().group;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Fábrica de Robôs"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                child: TabBar(
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.white),
                    tabs: [
                      Tab(
                        icon: Icon(Icons.account_circle),
                        text: 'Nova Remessa',
                      ),
                      Tab(
                        icon: Icon(Icons.apartment),
                        text: 'Em Produção',
                      ),
                      Tab(
                        icon: Icon(Icons.announcement),
                        text: 'Finalizados',
                      ),
                    ]),
              ),
              Flexible(
                  child: TabBarView(children: [
                ShippingPage(),
                ShippingPage(),
                ShippingPage(),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}

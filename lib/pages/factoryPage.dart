import 'dart:ui';
import 'package:Dsrpt21/pages/productionPage.dart';
import 'package:Dsrpt21/pages/shippingPage.dart';
import 'package:flutter/material.dart';

class FactoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
                        icon: Icon(Icons.android),
                        text: 'Nova Remessa',
                      ),
                      Tab(
                        icon: Icon(Icons.apartment),
                        text: 'Remessas Produzidas',
                      ),
                    ]),
              ),
              Flexible(
                  child: TabBarView(children: [
                ShippingPage(),
                ProductionPage(),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:Dsrpt21/widgets/robotWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FactoryPage extends StatelessWidget {
  int group = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova Remessa"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                "\nSelecione o tipo de robô que deseja construir:\n",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RobotIconContainer("assets/img/robots/air1.png"),
                RobotIconContainer("assets/img/robots/human1.png"),
                RobotIconContainer("assets/img/robots/tank1.png"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: group,
                        onChanged: (T) {
                          print(T);
                        }),
                    Text(
                      "Aéreo",
                      style: TextStyle(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: group,
                        onChanged: (T) {
                          print(T);
                        }),
                    Text(
                      "Humanóide",
                      style: TextStyle(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 3,
                        groupValue: group,
                        onChanged: (T) {
                          print(T);
                        }),
                    Text(
                      "Térreo",
                      style: TextStyle(),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

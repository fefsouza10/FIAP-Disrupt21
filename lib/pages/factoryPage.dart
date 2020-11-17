import 'dart:ui';

import 'package:Dsrpt21/controllers/shippingController.dart';
import 'package:Dsrpt21/widgets/robotWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

class FactoryPage extends StatelessWidget {
  final ShippingController shippingController = Get.put(ShippingController());
  //_FactoryPageState() => _FactoryPageState();
  //int group = 0;
  //var group = Get.find<ShippingController>().group;

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
            GetBuilder<ShippingController>(
              builder: (shippingController) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue:
                                Get.find<ShippingController>().getGroup(),
                            onChanged: (value) {
                              Get.find<ShippingController>().setGroup(value);
                              print(value);
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
                            groupValue:
                                Get.find<ShippingController>().getGroup(),
                            onChanged: (value) {
                              Get.find<ShippingController>().setGroup(value);
                              print(value);
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
                            groupValue:
                                Get.find<ShippingController>().getGroup(),
                            onChanged: (value) {
                              Get.find<ShippingController>().setGroup(value);
                              print(value);
                            }),
                        Text(
                          "Térreo",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
            GetBuilder<ShippingController>(builder: (shippingController) {
              if (Get.find<ShippingController>().getGroup() == 1) {
                return Column(
                  children: [
                    Container(
                      child: Text(
                        "\nSelecione o tipo de robô aéreo que deseja:\n",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RobotIconContainer("assets/img/robots/air1.png"),
                        RobotIconContainer("assets/img/robots/air2.png"),
                        RobotIconContainer("assets/img/robots/air3.png"),
                      ],
                    ),
                    GetBuilder<ShippingController>(
                      builder: (shippingController) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Radio(
                                    value: 1,
                                    groupValue: Get.find<ShippingController>()
                                        .getRobot(),
                                    onChanged: (value) {
                                      Get.find<ShippingController>()
                                          .setRobot(value);
                                      print(value);
                                    }),
                                Text(
                                  "Aéreo 1",
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: 2,
                                    groupValue: Get.find<ShippingController>()
                                        .getRobot(),
                                    onChanged: (value) {
                                      Get.find<ShippingController>()
                                          .setRobot(value);
                                      print(value);
                                    }),
                                Text(
                                  "Aéreo 2",
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: 3,
                                    groupValue: Get.find<ShippingController>()
                                        .getRobot(),
                                    onChanged: (value) {
                                      Get.find<ShippingController>()
                                          .setRobot(value);
                                      print(value);
                                    }),
                                Text(
                                  "Aéreo 3",
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                );
              } else if (Get.find<ShippingController>().getGroup() == 2) {
                return Column(
                  children: [
                    Container(
                      child: Text(
                        "\nSelecione o tipo de robô humanóide que deseja:\n",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RobotIconContainer("assets/img/robots/human1.png"),
                        RobotIconContainer("assets/img/robots/human2.png"),
                        RobotIconContainer("assets/img/robots/human5.png"),
                      ],
                    ),
                    GetBuilder<ShippingController>(
                      builder: (shippingController) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Radio(
                                    value: 1,
                                    groupValue: Get.find<ShippingController>()
                                        .getRobot(),
                                    onChanged: (value) {
                                      Get.find<ShippingController>()
                                          .setRobot(value);
                                      print(value);
                                    }),
                                Text(
                                  "Humanóide 1",
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: 2,
                                    groupValue: Get.find<ShippingController>()
                                        .getRobot(),
                                    onChanged: (value) {
                                      Get.find<ShippingController>()
                                          .setRobot(value);
                                      print(value);
                                    }),
                                Text(
                                  "Humanóide 2",
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: 3,
                                    groupValue: Get.find<ShippingController>()
                                        .getRobot(),
                                    onChanged: (value) {
                                      Get.find<ShippingController>()
                                          .setRobot(value);
                                      print(value);
                                    }),
                                Text(
                                  "Humanóide 3",
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                );
              } else if (Get.find<ShippingController>().getGroup() == 3) {
                return Column(
                  children: [
                    Container(
                      child: Text(
                        "\nSelecione o tipo de robô térreo que deseja:\n",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RobotIconContainer("assets/img/robots/tank1.png"),
                        RobotIconContainer("assets/img/robots/tank2.png"),
                        RobotIconContainer("assets/img/robots/tank3.png"),
                      ],
                    ),
                    GetBuilder<ShippingController>(
                      builder: (shippingController) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Radio(
                                    value: 1,
                                    groupValue: Get.find<ShippingController>()
                                        .getRobot(),
                                    onChanged: (value) {
                                      Get.find<ShippingController>()
                                          .setRobot(value);
                                      print(value);
                                    }),
                                Text(
                                  "Térreo 1",
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: 2,
                                    groupValue: Get.find<ShippingController>()
                                        .getRobot(),
                                    onChanged: (value) {
                                      Get.find<ShippingController>()
                                          .setRobot(value);
                                      print(value);
                                    }),
                                Text(
                                  "Térreo 2",
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: 3,
                                    groupValue: Get.find<ShippingController>()
                                        .getRobot(),
                                    onChanged: (value) {
                                      Get.find<ShippingController>()
                                          .setRobot(value);
                                      print(value);
                                    }),
                                Text(
                                  "Térreo 3",
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                );
              } else {
                return Text("Selecione acima para continuar!");
              }
            }),
            GetBuilder<ShippingController>(builder: (shippingController) {
              if (Get.find<ShippingController>().getRobot() != 0) {
                return Column(
                  children: [
                    Container(
                      child: Text(
                        "\nInsira a quantidade que deve entrar em produção:\n",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration:
                            new InputDecoration(labelText: "Quantidade"),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                        child: Text("ENVIAR PARA PRODUÇÃO",
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {},
                        color: Colors.blue),
                  ],
                );
              } else {
                return Container();
              }
            })
          ],
        ),
      ),
    );
  }
}

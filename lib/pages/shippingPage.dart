import 'dart:ui';

import 'package:Dsrpt21/controllers/shippingController.dart';
import 'package:Dsrpt21/widgets/robotWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:Dsrpt21/services/databaseController.dart';

class ShippingPage extends StatelessWidget {
  final ShippingController shippingController = Get.put(ShippingController());
  final RemessaModel remessa = new RemessaModel();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.blue),
          child: Text(
            "\n   Selecione o tipo de robô que deseja construir:   \n",
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 20),
        GetBuilder<ShippingController>(
          builder: (shippingController) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: Get.find<ShippingController>().getGroup(),
                        onChanged: (value) {
                          Get.find<ShippingController>().setGroup(value);
                          print(value);
                          remessa.tipoRobo = "Aéreo";
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
                        groupValue: Get.find<ShippingController>().getGroup(),
                        onChanged: (value) {
                          Get.find<ShippingController>().setGroup(value);
                          print(value);
                          remessa.tipoRobo = "Humanóide";
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
                        groupValue: Get.find<ShippingController>().getGroup(),
                        onChanged: (value) {
                          Get.find<ShippingController>().setGroup(value);
                          print(value);
                          remessa.tipoRobo = "Térreo";
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
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow[800]),
                  child: Text(
                    "\n   Selecione o modelo de robô aéreo que deseja:   \n",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
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
                                groupValue:
                                    Get.find<ShippingController>().getRobot(),
                                onChanged: (value) {
                                  Get.find<ShippingController>()
                                      .setRobot(value);
                                  print(value);
                                  remessa.img = "assets/img/robots/air1.png";
                                  remessa.modeloRobo = "Aéreo 1";
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
                                groupValue:
                                    Get.find<ShippingController>().getRobot(),
                                onChanged: (value) {
                                  Get.find<ShippingController>()
                                      .setRobot(value);
                                  print(value);
                                  remessa.img = "assets/img/robots/air2.png";
                                  remessa.modeloRobo = "Aéreo 2";
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
                                groupValue:
                                    Get.find<ShippingController>().getRobot(),
                                onChanged: (value) {
                                  Get.find<ShippingController>()
                                      .setRobot(value);
                                  print(value);
                                  remessa.img = "assets/img/robots/air3.png";
                                  remessa.modeloRobo = "Aéreo 3";
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
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[700]),
                  child: Text(
                    "\n   Selecione o modelo de robô humanóide que deseja:   \n",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
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
                                groupValue:
                                    Get.find<ShippingController>().getRobot(),
                                onChanged: (value) {
                                  Get.find<ShippingController>()
                                      .setRobot(value);
                                  print(value);
                                  remessa.img = "assets/img/robots/human1.png";
                                  remessa.modeloRobo = "Humanóide 1";
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
                                groupValue:
                                    Get.find<ShippingController>().getRobot(),
                                onChanged: (value) {
                                  Get.find<ShippingController>()
                                      .setRobot(value);
                                  print(value);
                                  remessa.img = "assets/img/robots/human2.png";
                                  remessa.modeloRobo = "Humanóide 2";
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
                                groupValue:
                                    Get.find<ShippingController>().getRobot(),
                                onChanged: (value) {
                                  Get.find<ShippingController>()
                                      .setRobot(value);
                                  print(value);
                                  remessa.img = "assets/img/robots/human5.png";
                                  remessa.modeloRobo = "Humanóide 3";
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
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green[700]),
                  child: Text(
                    "\n   Selecione o modelo de robô térreo que deseja:   \n",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
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
                                groupValue:
                                    Get.find<ShippingController>().getRobot(),
                                onChanged: (value) {
                                  Get.find<ShippingController>()
                                      .setRobot(value);
                                  print(value);
                                  remessa.img = "assets/img/robots/tank1.png";
                                  remessa.modeloRobo = "Térreo 1";
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
                                groupValue:
                                    Get.find<ShippingController>().getRobot(),
                                onChanged: (value) {
                                  Get.find<ShippingController>()
                                      .setRobot(value);
                                  print(value);
                                  remessa.img = "assets/img/robots/tank2.png";
                                  remessa.modeloRobo = "Térreo 2";
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
                                groupValue:
                                    Get.find<ShippingController>().getRobot(),
                                onChanged: (value) {
                                  Get.find<ShippingController>()
                                      .setRobot(value);
                                  print(value);
                                  remessa.img = "assets/img/robots/tank3.png";
                                  remessa.modeloRobo = "Térreo 3";
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
            return Container();
          }
        }),
        GetBuilder<ShippingController>(builder: (shippingController) {
          if (Get.find<ShippingController>().getRobot() != 0) {
            return Column(
              children: [
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.teal[700]),
                  child: Text(
                    "\n   Insira a quantidade que deve entrar em produção:   \n",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    onChanged: (value) => remessa.quantidadeRobo = value,
                    decoration: new InputDecoration(labelText: "Quantidade"),
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
                    onPressed: () {
                      if (remessa.tipoRobo == null ||
                          remessa.modeloRobo == null ||
                          remessa.quantidadeRobo == null) {
                        Get.snackbar("Remessa não aceita!",
                            "Obrigatório preencher todos os campos.",
                            backgroundColor: Colors.grey,
                            colorText: Colors.white,
                            snackStyle: SnackStyle.FLOATING,
                            animationDuration: Duration(milliseconds: 500),
                            duration: Duration(seconds: 4),
                            borderWidth: 1,
                            icon: Icon(Icons.error),
                            titleText: Text(
                              "Remessa não aceita!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            snackPosition: SnackPosition.BOTTOM);
                      } else {
                        remessa.addRemessa();
                        Get.snackbar("Remessa aceita!",
                            "Encontre suas remessas em \"Remessas Produzidas\"",
                            backgroundColor: Colors.grey,
                            colorText: Colors.white,
                            snackStyle: SnackStyle.FLOATING,
                            animationDuration: Duration(milliseconds: 500),
                            duration: Duration(seconds: 4),
                            borderWidth: 1,
                            icon: Icon(Icons.check),
                            titleText: Text(
                              "Remessa aceita!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            snackPosition: SnackPosition.BOTTOM);
                      }
                    },
                    color: Colors.blue),
              ],
            );
          } else {
            return Container();
          }
        })
      ],
    ));
  }
}

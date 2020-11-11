import 'package:MPSP/config/palette.dart';
import 'package:flutter/material.dart';

class Scroll extends StatefulWidget {
  @override
  _ScrollState createState() => _ScrollState();
}

class _ScrollState extends State<Scroll> {
  Container rotas(String rota) {
    return Container(
      child: RaisedButton(
        color: Colors.white,
        child: Text(
          rota,
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Stack(
            children: [
              //1
              Positioned(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1800,
                  color: Palette.vermelhompsp,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 34),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            "GAECO | GECEP | GAEMA | GEDEC| GEDUC",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white38,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Grupos de Atuação Especial",
                            style: TextStyle(
                                fontSize: 20,
                                color: Palette.brancompsp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, top: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10,
                              runSpacing: 5,
                              children: [
                                Center(
                                  child: rotas("Ver Mais"),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //2
              Positioned(
                child: Container(
                  height: 1630,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(98, 1, 2, 1),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(75)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 34),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            "Missão | Atos | Relatórios | Contato",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white38,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Promotorias",
                            style: TextStyle(
                                fontSize: 20,
                                color: Palette.brancompsp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, top: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10,
                              runSpacing: 5,
                              children: [
                                Center(
                                  child: rotas("Ver Mais"),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //3
              Positioned(
                child: Container(
                  height: 1450,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(144, 6, 3, 1),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(75)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 34),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            "Missão | Núcleos | Contato",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white38,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Container(
                          child: Text(
                            "NUIPA",
                            style: TextStyle(
                                fontSize: 20,
                                color: Palette.brancompsp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, top: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10,
                              runSpacing: 5,
                              children: [
                                Center(
                                  child: rotas("Ver Mais"),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //4
              Positioned(
                child: Container(
                  height: 1270,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(76, 8, 5, 1),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(75)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 34),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            "Missão | Contato",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white38,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Escola Superior do MP",
                            style: TextStyle(
                                fontSize: 20,
                                color: Palette.brancompsp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, top: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10,
                              runSpacing: 5,
                              children: [
                                Center(
                                  child: rotas("Ver Mais"),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //5
              Positioned(
                child: Container(
                  height: 1090,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(98, 1, 2, 1),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(75)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 34),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            "Avisos | Composição | Regimento interno",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white38,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Conselho Superior",
                            style: TextStyle(
                                fontSize: 20,
                                color: Palette.brancompsp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, top: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10,
                              runSpacing: 5,
                              children: [
                                Center(
                                  child: rotas("Ver Mais"),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //6
              Positioned(
                child: Container(
                  height: 910,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(119, 17, 13, 1),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(75)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 34),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            "Composição | Atos | Regimento interno",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white38,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Colégio de Procuradores",
                            style: TextStyle(
                                fontSize: 20,
                                color: Palette.brancompsp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, top: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10,
                              runSpacing: 5,
                              children: [
                                Center(
                                  child: rotas("Ver Mais"),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //7
              Positioned(
                child: Container(
                  height: 730,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(148, 1, 2, 1),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(75)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 34),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            "Missão | Relatórios | Contato",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white38,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Corregedoria Geral",
                            style: TextStyle(
                                fontSize: 20,
                                color: Palette.brancompsp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, top: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10,
                              runSpacing: 5,
                              children: [
                                Center(
                                  child: rotas("Ver Mais"),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //8
              Positioned(
                child: Container(
                  height: 550,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(98, 1, 2, 1),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(75)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 34),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            "Atribuição | Comitê de Segurança Institucional | Contato",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white38,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Assessoria de Segurança Institucional",
                            style: TextStyle(
                                fontSize: 20,
                                color: Palette.brancompsp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, top: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10,
                              runSpacing: 5,
                              children: [
                                Center(
                                  child: rotas("Ver Mais"),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //9
              Positioned(
                child: Container(
                  height: 370,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Palette.vermelhompsp,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(75)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 34),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            "Missão | Destaque | Contato",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white38,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Diretoria Geral",
                            style: TextStyle(
                                fontSize: 20,
                                color: Palette.brancompsp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, top: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10,
                              runSpacing: 5,
                              children: [
                                Center(
                                  child: rotas("Ver Mais"),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //10
              Positioned(
                child: Container(
                  height: 190,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Palette.brancompsp,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(75),
                        bottomRight: Radius.circular(75)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 34),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            "Missão | Comunicados | Contato",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black45,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Procuradoria Geral",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, top: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10,
                              runSpacing: 5,
                              children: [
                                Center(
                                  child: rotas("Ver Mais"),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

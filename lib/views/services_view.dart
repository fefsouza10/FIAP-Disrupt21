import 'package:MPSP/bloc/navigation.bloc/navigation_bloc.dart';
import 'package:MPSP/config/palette.dart';
import 'package:MPSP/screens/buttons/chathead.button.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Services({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Stack(
        children: [
          Container(
            color: Palette.vermelhompsp,
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            color: Palette.vermelhompsp,
            height: 80,
            width: width,
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        child: GestureDetector(
                          onTap: onMenuTap,
                          child: Container(
                            child: Icon(
                              Icons.menu,
                              color: Palette.brancompsp,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Serviços",
                        style: TextStyle(
                            fontSize: 24,
                            color: Palette.brancompsp,
                            fontFamily: "Montserrat"),
                      ),
                      Container()
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: ListView(
                children: [
                  Stack(
                    children: [
                      //1
                      Positioned(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1800,
                          color: Palette.brancompsp,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "Demonstrativo | Comprovante | Contato",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black38,
                                        fontFamily: "Montserrat"),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Atendimento ao Inativo",
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
                      //2
                      Positioned(
                        child: Container(
                          height: 1630,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(98, 1, 2, 1),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(75)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "Objetivos | Taxonomia | Implantação | Comitê",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white38,
                                        fontFamily: "Montserrat"),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Tabelas Unificadas",
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
                            color: Palette.vermelhompsp,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(75)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "Pesquisas | Atos | Certificado Digital",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white38,
                                        fontFamily: "Montserrat"),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "CTIC",
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
                            color: Palette.brancompsp,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(75)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "Tribunais | Conselhos",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black38,
                                        fontFamily: "Montserrat"),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Links",
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
                      //5
                      Positioned(
                        child: Container(
                          height: 1090,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(98, 1, 2, 1),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(75)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "Ato Normativo",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white38,
                                        fontFamily: "Montserrat"),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "e-funcional",
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
                            color: Palette.vermelhompsp,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(75)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "Observações | Datas | Pesquisar",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white38,
                                        fontFamily: "Montserrat"),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Diário Oficial",
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
                            color: Palette.brancompsp,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(75)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "Lista de Antiguidades",
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
                      //8
                      Positioned(
                        child: Container(
                          height: 550,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(98, 1, 2, 1),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(75)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "Almoxarifado | Correios | Patrimônio",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white38,
                                        fontFamily: "Montserrat"),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Formulário Administrativo",
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
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(75)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "Eliminação | Transferência | FAQ | Normas",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white38,
                                        fontFamily: "Montserrat"),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Gestão Documental",
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
                                    "Aquisição | Doação | Contato | Catálogo Online",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black45,
                                        fontFamily: "Montserrat"),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Biblioteca",
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
            ),
          ),
          ChatHead()
        ],
      ),
    );
  }
}

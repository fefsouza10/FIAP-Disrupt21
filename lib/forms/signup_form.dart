import 'package:MPSP/config/palette.dart';
import 'package:MPSP/screens/buttons/signup_button.dart';
import 'package:MPSP/config/text_field_custom.dart';
import 'package:MPSP/screens/controller/menu_controle.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key key, this.onLogInPressed}) : super(key: key);
  static const double boxSize = 68;

  final VoidCallback onLogInPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(
                left: 1,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 135.0),
                      child: Text(
                        '\n\n\nCadastre-se',
                        style: TextStyle(fontSize: 35, color: Colors.black),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "MP",
                          style: TextStyle(
                              fontSize: 60,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "SP",
                          style: TextStyle(
                              fontSize: 60,
                              color: Palette.brancompsp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 180.0),
                      child: Text(
                        "Ministério Público",
                        style: TextStyle(
                            fontSize: 20.5,
                            fontFamily: 'Roboto',
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 180.0),
                      child: Text(
                        "do Estado de São Paulo",
                        style: TextStyle(
                            fontSize: 15.25,
                            fontFamily: 'Roboto',
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: TextField(
                      autofocus: false,
                      decoration: signupInputDecoration(
                        labelText: 'EMAIL',
                        hintText: "pedro93546@gmail.com",
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: TextField(
                    cursorColor: Colors.white,
                    autofocus: false,
                    decoration: signupInputDecoration(
                      labelText: 'SENHA',
                      hintText: "*********",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: TextField(
                    cursorColor: Colors.white,
                    autofocus: false,
                    decoration: signupInputDecoration(
                      labelText: 'CONFIRME SENHA',
                      hintText: "*********",
                    ),
                  ),
                ),
                SignUpBar(
                  isLoading: true,
                  label: 'Cadastrar',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Menu();
                    }));
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          splashColor: Palette.brancompsp,
                          onTap: () {
                            onLogInPressed?.call();
                          },
                          child: const Text(
                            'Entrar',
                            style: TextStyle(
                              color: Palette.brancompsp,
                              fontSize: 16,
                              fontFamily: "Montserrat",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      spreadRadius: 0.5,
                                      blurRadius: 10,
                                      offset: Offset(0, 5),
                                    )
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage('assets/img/home/fb.png'),
                                  )),
                              width: boxSize,
                              height: boxSize,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      spreadRadius: 0.5,
                                      blurRadius: 10,
                                      offset: Offset(0, 5),
                                    )
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/img/home/google.png'),
                                  )),
                              width: boxSize,
                              height: boxSize,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

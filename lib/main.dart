import 'package:MPSP/config/palette.dart';
import 'package:MPSP/views/signin_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Palette.vermelhompsp2,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Palette.vermelhompsp,
        fontFamily: "Montserrat",
      ),
      debugShowCheckedModeBanner: false,
      home: SigninView(),
    );
  }
}

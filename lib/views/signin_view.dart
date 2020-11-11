import 'package:MPSP/config/palette.dart';
import 'package:MPSP/screens/controller/anim_controle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Escolher font
class SigninView extends StatefulWidget {
  @override
  _SigninViewState createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MPSP",
      theme: ThemeData(
        textTheme: GoogleFonts.anonymousProTextTheme(),
        fontFamily: "Montserrat",

        /// escolherfont essa esta riducula
        accentColor: Palette.brancompsp,
        appBarTheme: const AppBarTheme(
          brightness: Brightness.dark,
          color: Palette.vermelhompsp,
        ),
      ),
      home: ControleScreen(),
    );
  }
}

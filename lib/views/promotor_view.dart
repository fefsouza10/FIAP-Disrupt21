import 'package:MPSP/config/palette.dart';
import 'package:flutter/material.dart';

class Promotor extends StatefulWidget {
  @override
  _PromotorState createState() => _PromotorState();
}

class _PromotorState extends State<Promotor> {
  TextEditingController _controllerMensagem = TextEditingController();

  _enviarMsg() {}
  _enviarArquivo() {}
  @override
  Widget build(BuildContext context) {
    var caixaMsg = Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 8),
              child: TextField(
                controller: _controllerMensagem,
                autofocus: true,
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 8, 32, 8),
                    hintText: "Digite uma Mensagem",
                    filled: true,
                    fillColor: Palette.brancompsp,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    suffixIcon: IconButton(
                        icon: Icon(Icons.archive, color: Palette.vermelhompsp2),
                        onPressed: _enviarArquivo())),
              ),
            ),
          ),
          FloatingActionButton(
            backgroundColor: Palette.vermelhompsp2,
            child: Icon(
              Icons.send,
              color: Palette.brancompsp,
            ),
            mini: true,
            onPressed: _enviarMsg,
          )
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Promotoria MPSP"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/promo/justice.jpg"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                caixaMsg,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

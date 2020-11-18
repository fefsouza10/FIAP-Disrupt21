import 'package:flutter/material.dart';

class ProductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text("data"),
          ListTile(
            title: Text("Tipo Robô"),
            subtitle: Text("Robô tal"),
          )
        ],
      ),
    );
  }
}

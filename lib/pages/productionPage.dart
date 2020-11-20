import 'package:Dsrpt21/services/databaseController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetBuilder<DatabaseController>(
        init: DatabaseController(),
        builder: (value) {
          return FutureBuilder(
              future: value.getData("remessas"),
              // ignore: missing_return
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData) {
                  return new ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage(snapshot.data[index].data()['img']),
                          ),
                          title: Text("Categoria: " +
                              snapshot.data[index].data()['tipoRobo']),
                          subtitle: Text("Modelo: " +
                              snapshot.data[index].data()['modeloRobo']),
                          trailing: Text("Qnt: " +
                              snapshot.data[index].data()['quantidadeRobo']),
                        ),
                      );
                    },
                  );
                } else {
                  Text("Deu ruim");
                }
              });
        },
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class RemessaModel {
  String id;
  String img;
  String tipoRobo;
  String modeloRobo;
  String quantidadeRobo;

  RemessaModel({id, img, tipoRobo, modeloRobo, quantidadeRobo});

  RemessaModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    img = doc["img"];
    tipoRobo = doc["tipoRobo"];
    modeloRobo = doc["modeloRobo"];
    quantidadeRobo = doc["quantidadeRobo"];
  }

  CollectionReference remessas =
      FirebaseFirestore.instance.collection("remessas");

  Future<void> addRemessa() {
    return remessas
        .add({
          "img": img,
          "tipoRobo": tipoRobo,
          "modeloRobo": modeloRobo,
          "quantidadeRobo": quantidadeRobo
        })
        .then((value) => print("Remessa Adicionada!"))
        .catchError((error) => print("Falhou em adicionar remessa: $error"));
  }
}

class DatabaseController extends GetxController {
  Future getData(String collection) async {
    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection(collection).get();
    return snapshot.docs;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }
}

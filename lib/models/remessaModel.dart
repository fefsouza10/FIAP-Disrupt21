class RemessaModel {
  String id;
  String img;
  String tipoRobo;
  String modeloRobo;
  String quantidadeRobo;

  RemessaModel({id, img, tipoRobo, modeloRobo, quantidadeRobo});

  RemessaModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    id = doc.documentId;
    img = doc["img"];
    tipoRobo = doc["tipoRobo"];
    modeloRobo = doc["modeloRobo"];
    quantidadeRobo = doc["quantidadeRobo"];
  }
}

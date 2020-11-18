import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:Dsrpt21/models/remessaModel.dart';

class Database {
  final Firestore _firestore = Firestore.instance;

  Future<bool> createNewRemessa(RemessaModel remessa) async {
    try {
      await _firestore.collection("remessas").document(remessa.id).setData({
        "img": remessa.img,
        "tipoRobo": remessa.tipoRobo,
        "modeloRobo": remessa.modeloRobo,
        "quantidadeRobo": remessa.quantidadeRobo,
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<RemessaModel> getRemessa(String uid) async {
    try {
      DocumentSnapshot doc =
          await _firestore.collection("remessas").document(uid).get();
      return RemessaModel.fromDocumentSnapshot(doc);
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}

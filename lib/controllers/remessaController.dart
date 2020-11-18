import 'package:get/get.dart';
import 'package:Dsrpt21/models/remessaModel.dart';

class UserController extends GetxController {
  Rx<RemessaModel> _remessaModel = RemessaModel().obs;

  RemessaModel get remessa => _remessaModel.value;

  set remessa(RemessaModel value) => this._remessaModel.value = value;

  void clear() {
    _remessaModel.value = RemessaModel();
  }
}

import 'package:get/get.dart';

class ShippingController extends GetxController {
//final MyRepository repository;
//ShippingController({@required this.repository}) : assert(repository != null);

  var group = 0.obs;
  var robot = 0.obs;
  var quantity = 0.obs;

  void setGroup(t) {
    this.group.value = t;
    update();
  }

  getGroup() {
    var groupValue = this.group.value;
    return groupValue;
  }

  void setRobot(t) {
    this.robot.value = t;
    update();
  }

  getRobot() {
    var robotValue = this.robot.value;
    return robotValue;
  }

  void setQuantity(t) {
    this.quantity.value = t;
    update();
  }

  getQuantity() {
    var quantityValue = this.quantity.value;
    return quantityValue;
  }
}

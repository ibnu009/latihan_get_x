import 'package:get/get.dart';
import 'package:latihan_get_x/screens/controller/binding/binding_controller_dependencies.dart';
import 'package:latihan_get_x/screens/controller/binding/network_dependencies.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    bindingRestaurantController();
    bindingRestaurantNetworkService();
  }
}
import 'package:get/get.dart';
import 'package:latihan_get_x/data/network/service/RestaurantNetworkService.dart';
import 'package:latihan_get_x/screens/controller/RestaurantController.dart';

void bindingRestaurantController() => Get.lazyPut<RestaurantController>(
        () => RestaurantController(Get.find<RestaurantNetworkService>()));
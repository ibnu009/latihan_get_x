import 'package:get/get.dart';
import 'package:latihan_get_x/data/network/service/RestaurantNetworkService.dart';

void bindingRestaurantNetworkService() =>
    Get.lazyPut<RestaurantNetworkService>(() => RestaurantNetworkService());
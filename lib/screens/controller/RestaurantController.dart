import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_get_x/data/model/RestaurantForList.dart';
import 'package:latihan_get_x/data/network/response/RestaurantResponse.dart';
import 'package:latihan_get_x/data/network/service/RestaurantNetworkService.dart';

class RestaurantController extends GetxController with StateMixin {

  final RestaurantNetworkService _restaurantNetworkService;
  RestaurantController(this._restaurantNetworkService);

  RxList<RestaurantForList> restaurants = List<RestaurantForList>.empty().obs;

  @override
  void onInit() {
      _fetchRestaurants();
      super.onInit();
  }

  void _fetchRestaurants() async {
    try {
      change(null, status: RxStatus.loading());
      RestaurantResponse response = await _restaurantNetworkService.fetchRestaurants();
      if (response.error) {
        debugPrint("RestaurantNetworkService - onResponse error ");
        return;
      }

      restaurants.value = response.restaurants;
      change(null, status: RxStatus.success());
    } catch (_) {
      debugPrint("RestaurantNetworkService - onCatch error ");
    }
  }
}
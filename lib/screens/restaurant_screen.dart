import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_get_x/data/model/RestaurantForList.dart';
import 'package:latihan_get_x/screens/RestaurantItem.dart';
import 'package:latihan_get_x/screens/controller/RestaurantController.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  final RestaurantController _restaurantController =
  Get.find<RestaurantController>();

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant App'),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _restaurantController.obx((state) {
            return _buildBody(_restaurantController.restaurants, screen);
          },
            onLoading: const Center(child: CircularProgressIndicator()),
          )
      ),
    );
  }

  Widget _buildBody(List<RestaurantForList> restaurants, Size screen) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 230,
        childAspectRatio: screen.width / screen.height * 1.4,
        mainAxisSpacing: 12,
      ),
      itemCount: restaurants.length,
      itemBuilder: (_, index) {
        RestaurantForList restaurant = restaurants[index];
        return Hero(
          tag: restaurant.id,
          child: restaurantItem(
            restaurant: restaurant,
          ),
        );
      },
    );
  }
}

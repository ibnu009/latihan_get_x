import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_get_x/screens/controller/binding/ControllerBinding.dart';
import 'package:latihan_get_x/screens/restaurant_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
            name: '/',
            page: () => const RestaurantScreen(),
            binding: ControllerBindings())
      ],
    );
  }
}

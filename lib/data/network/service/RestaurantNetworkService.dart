import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:latihan_get_x/data/const_val.dart';
import 'package:latihan_get_x/data/network/response/RestaurantResponse.dart';

class RestaurantNetworkService {
  Future<RestaurantResponse> fetchRestaurants() async {
    final response = await http.get(Uri.parse("$baseUrl/list"));
    if (response.statusCode == 200) {
      return RestaurantResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Gagal mendapatkan data restaurant');
    }
  }
}
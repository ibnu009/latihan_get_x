import 'package:flutter/material.dart';
import 'package:latihan_get_x/data/const_val.dart';
import 'package:latihan_get_x/data/model/RestaurantForList.dart';

Widget restaurantItem({required RestaurantForList restaurant}) {
  return ClipRRect(
    borderRadius: const BorderRadius.all(Radius.circular(25)),
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      color: Colors.white,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
                child: Image.network(
                  "$pictureUrlSmall${restaurant.pictureId}",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 4.0, horizontal: 8),
                child: SizedBox(
                  height: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 2,
                        child: RichText(
                          overflow: TextOverflow.fade,
                          text: TextSpan(children: [
                            TextSpan(
                              text: "${restaurant.name}\n",
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: restaurant.city,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                const Icon(
                  Icons.favorite,
                  color: Colors.blue,
                  size: 45.0,
                ),
                Text(
                  restaurant.rating.toString(),
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );

}

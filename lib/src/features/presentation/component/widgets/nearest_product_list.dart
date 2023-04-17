import 'package:flutter/material.dart';

class NearestProduct extends StatefulWidget {
  const NearestProduct({super.key});

  @override
  State<NearestProduct> createState() => _NearestProductState();
}

class _NearestProductState extends State<NearestProduct> {
  List<NearestRestaurant> restaurants = [
    NearestRestaurant(
      restaurantName: "Suncic",
      restaurantImage: "assets/images/p2.png",
      restaurantRatings: "\4.6",
      restaurantTime: "\50",
    ),
    NearestRestaurant(
      restaurantName: "GGad",
      restaurantImage: "assets/images/p2.png",
      restaurantRatings: "\4.6",
      restaurantTime: "\30",
    ),
    NearestRestaurant(
      restaurantName: "mmd",
      restaurantImage: "assets/images/p2.png",
      restaurantRatings: "\4.6",
      restaurantTime: "\30",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ListView.separated(
        itemCount: 1,
        separatorBuilder: (context, _) {
          return SizedBox(
            width: 10,
          );
        },
        itemBuilder: (context, int index) {
          return nearestRestaurantList(restaurants: index);
        },
      ),
    );
  }
}

Widget nearestRestaurantList({
  required NearestRestaurant restaurants,
}) =>
    Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Sunic",
                style: TextStyle(fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 17,
                    ),
                  ),
                  Text("4.6 ."),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 20),
                    child: Icon(
                      Icons.watch_later_rounded,
                      size: 17,
                    ),
                  ),
                  Text("30"),
                ],
                  
              )
            )
          ],
        ),
      ),
    );

class NearestRestaurant {
  final String restaurantName;
  final String restaurantImage;

  final String restaurantRatings;
  final String restaurantTime;

  const NearestRestaurant({
    required this.restaurantName,
    required this.restaurantImage,
    required this.restaurantRatings,
    required this.restaurantTime,
  });
}

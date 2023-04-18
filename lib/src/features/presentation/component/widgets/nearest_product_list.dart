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
      restaurantName: "Elvis Bukateria",
      restaurantImage: "assets/images/p3.png",
      restaurantRatings: "\4.6",
      restaurantTime: "\30",
    ),
    NearestRestaurant(
      restaurantName: "Futo Cafe",
      restaurantImage: "assets/images/p2.png",
      restaurantRatings: "\4.6",
      restaurantTime: "\30",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child:
         Container(
           height: 200,
      
           child:
           ListView.separated(
            scrollDirection: Axis.horizontal,
             itemCount: 3,
             separatorBuilder: (BuildContext context, int index) {
               return SizedBox(width: 10,) ;
             },
              itemBuilder: (context, int index) {
            return nearestRestaurantList(restaurants: restaurants[index]);
        },
           ),
            
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
       
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(restaurants.restaurantImage)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                restaurants.restaurantName,
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
                  Text(restaurants.restaurantRatings + " ."),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 20),
                    child: Icon(
                      Icons.watch_later_rounded,
                      size: 17,
                    ),
                  ),
                  Text(restaurants.restaurantTime),
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

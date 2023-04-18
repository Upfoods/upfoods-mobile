import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key});

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  List<FoodLists> lists = [
    FoodLists(
      foodImage: "assets/images/p7.png",
      foodName: "Jollof Rice",
      foodPrice: "#3000",
    ),
    FoodLists(
      foodImage: "assets/images/p7.png",
      foodName: "Fried Rice",
      foodPrice: "#200",
    ),
    FoodLists(
      foodImage: "assets/images/p5.png",
      foodName: "Boiled Yam ",
      foodPrice: "#4000",
    ),
    FoodLists(
      foodImage: "assets/images/p5.png",
      foodName: "Porridge ",
      foodPrice: "#3000",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      child: 
      GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 30,
          mainAxisSpacing: 50,
        ),
        itemCount: 4,
         itemBuilder: (context, int index) {
          return foodList(lists: lists[index]);
        },
      ),
      
   
    );
  }
}

Widget foodList({required FoodLists lists}) => Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image(image: AssetImage(lists.foodImage),),
                  Container(
                    width: 150,
                    
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 67, 180, 71),
                    ),
                    height: 60,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              lists.foodName,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                lists.foodPrice,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              
            ],
          ),
        ],
      ),
    );

class FoodLists {
  final String foodImage;
  final String foodName;
  final String foodPrice;

  const FoodLists({
    required this.foodImage,
    required this.foodName,
    required this.foodPrice,
  });
}

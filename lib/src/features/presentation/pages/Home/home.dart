import 'package:flutter/material.dart';

import '../../../../config/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundGreen,
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Find Your\nFavorite Food",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 6,
                          offset: Offset(2, 6), // Shadow position
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.notifications_rounded,
                      size: 30,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        child: Container(child:Image.asset('assets/images/p1.png')),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

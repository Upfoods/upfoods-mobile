import 'package:flutter/material.dart';

class NearestProduct extends StatefulWidget {
  const NearestProduct({super.key});

  @override
  State<NearestProduct> createState() => _NearestProductState();
}

class _NearestProductState extends State<NearestProduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        height: 220,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/p2.png'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Sunic",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 17,
                            ),
                          ),
                          Text("4.6 ."),
                            Padding(
                            padding: const EdgeInsets.only(right:8.0, left: 20),
                            child: Icon(
                              Icons.watch_later_rounded,
                              
                              size: 17,
                            ),
                          ),
                          Text("30"),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

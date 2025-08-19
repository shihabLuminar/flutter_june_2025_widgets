import 'package:flutter/material.dart';

class SampleUi2 extends StatelessWidget {
  const SampleUi2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xff64bebf),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.grid_view_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),

                  Column(
                    children: [
                      Text(
                        "Current Location",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        "New Austen Georgia Italy",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xffeaf6f6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Badge.count(
                      count: 1,
                      child: Icon(
                        Icons.notifications_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),

              Text(
                "Location Categories",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 16,
                  children: [
                    _customCard(category: "category 1", bg: Color(0xffff0163)),
                    _customCard(category: "category 2"),
                    _customCard(category: "category 3"),
                  ],
                ),
              ),

              Text(
                "Recommended",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffeaf6f6),
                ),
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Column(
                      spacing: 16,
                      children: [
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/33034922/pexels-photo-33034922.jpeg",
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              spacing: 10,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kili Beach",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_rounded,
                                      color: Colors.red,
                                    ),
                                    Text("Indonesia"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("\$240 / "),
                                Text(
                                  "Per Person",
                                  style: TextStyle(color: Color(0xff64bebf)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 50,
                      right: 50,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.red,
                        child: Icon(Icons.favorite, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customCard({required String category, Color bg = Colors.grey}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bg,
      ),
      child: Row(
        spacing: 10,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/33034922/pexels-photo-33034922.jpeg",
            ),
          ),
          Text(category),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ImagesSampleScreen extends StatelessWidget {
  const ImagesSampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Images")),
      body: Column(
        children: [
          Text("Asset image widget"),
          Image.asset(height: 100, width: 100, "assets/images/Luminar.png"),
          Text("network image widget"),
          Image.network(
            height: 100,
            width: 100,
            "https://images.pexels.com/photos/33034922/pexels-photo-33034922.jpeg",
          ),
          Text("backgorund asset image"),

          CircleAvatar(
            backgroundImage: AssetImage("assets/images/Luminar.png"),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CircleavatarSample extends StatelessWidget {
  const CircleavatarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 50,
          foregroundColor: Colors.white,
          backgroundImage: NetworkImage(
            "https://images.pexels.com/photos/33034922/pexels-photo-33034922.jpeg",
          ),
          child: Text("data"),
        ),
      ),
    );
  }
}

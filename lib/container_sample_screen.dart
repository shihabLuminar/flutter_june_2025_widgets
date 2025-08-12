import 'package:flutter/material.dart';

class ContainerSampleScreen extends StatelessWidget {
  const ContainerSampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container")),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        padding: const EdgeInsets.all(30.0),
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          color: Colors.red,
          gradient: LinearGradient(
            colors: [Colors.red, Colors.yellow, Colors.blue],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blue,
              offset: Offset(-10, -10),
              blurRadius: 10,
            ),
          ],

          // shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://images.pexels.com/photos/33034922/pexels-photo-33034922.jpeg",
            ),
          ),
        ),
        child: Text(
          "shihab",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 60,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/card_sample_screen.dart';
import 'package:flutter_application_1/circleavatar_sample.dart';
import 'package:flutter_application_1/container_sample_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF128C7E),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("My first app"),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        leading: Icon(Icons.bookmark),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 15),
          Icon(Icons.search),
        ],
      ),
      body: Center(
        child: Column(
          spacing: 15,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContainerSampleScreen(),
                  ),
                );
              },
              child: Text(
                "Container",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardSampleScreen()),
                );
              },
              child: Text(
                "Card",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CircleavatarSample()),
                );
              },
              child: Text(
                "Circle Avatar",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

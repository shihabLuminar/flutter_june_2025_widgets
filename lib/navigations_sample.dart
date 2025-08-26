import 'package:flutter/material.dart';
import 'package:flutter_application_1/card_sample_screen.dart';

class NavigationsSample extends StatelessWidget {
  const NavigationsSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Navitions")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardSampleScreen()),
                );
              },
              child: Text("Push"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Pop"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => CardSampleScreen()),
                );
              },
              child: Text("Push replacement"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => CardSampleScreen()),
                  (route) => false,
                );
              },
              child: Text("Push and remove until"),
            ),
          ],
        ),
      ),
    );
  }
}

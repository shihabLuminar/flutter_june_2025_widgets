import 'package:flutter/material.dart';

class CardSampleScreen extends StatelessWidget {
  const CardSampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Card(
            color: Colors.red,
            shadowColor: Colors.blue,
            elevation: 10,

            child: Text("shihab", style: TextStyle(fontSize: 60)),
          ),
        ),
      ),
    );
  }
}

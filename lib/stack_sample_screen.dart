import 'package:flutter/material.dart';

class StackSampleScreen extends StatelessWidget {
  const StackSampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(title: Text("stack")),
        body: SizedBox(
          height: 200,
          width: 200,
          child: Stack(
            children: [
              Container(color: Colors.red, height: 200, width: 200),
              Container(color: Colors.green, height: 150, width: 150),
              Positioned(
                right: 10,
                bottom: 10,
                child: Container(color: Colors.yellow, height: 100, width: 100),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(color: Colors.black, height: 25, width: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

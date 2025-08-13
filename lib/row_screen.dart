import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red, width: 100, height: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red, width: 100, height: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red, width: 100, height: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red, width: 100, height: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red, width: 100, height: 50),
            ),
          ],
        ),
      ),
    );
  }
}

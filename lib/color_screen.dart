import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  Color scaffoldColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(title: Text("Color Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                scaffoldColor = Colors.red;
                setState(() {});
              },
              child: Container(color: Colors.red, height: 100, width: 100),
            ),
            Container(color: Colors.green, height: 100, width: 100),
            InkWell(
              onTap: () {
                scaffoldColor = Colors.blue;
                setState(() {});
              },
              child: Container(color: Colors.blue, height: 100, width: 100),
            ),
            Container(color: Colors.yellow, height: 100, width: 100),
            Container(color: Colors.purple, height: 100, width: 100),
          ],
        ),
      ),
    );
  }
}

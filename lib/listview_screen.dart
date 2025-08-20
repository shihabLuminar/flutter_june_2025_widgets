import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List view")),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          color: Colors.red,

          height: 100,
          child: Center(child: Text("$index")),
        ),

        separatorBuilder: (context, index) =>
            Container(color: Colors.yellow, height: 30),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid view")),
      body: GridView.builder(
        itemCount: 100,

        // scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisExtent: 70,
        ),
        itemBuilder: (context, index) => Container(
          color: index.isEven ? Colors.black : Colors.white,
          child: Center(child: Text("$index")),
        ),
      ),
    );
  }
}

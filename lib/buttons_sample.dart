import 'package:flutter/material.dart';

class ButtonsSample extends StatelessWidget {
  const ButtonsSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow, title: Text(" Buttons")),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.favorite_outline),
      ),
      body: Column(
        children: [
          ElevatedButton(
            style: ButtonStyle(
              shadowColor: WidgetStatePropertyAll(Colors.red),
              // elevation: WidgetStatePropertyAll(20),
              padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
              backgroundColor: WidgetStatePropertyAll(Colors.red),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
            ),
            onPressed: () {
              print("button pressed");
            },
            child: Text("Elevated Button"),
          ),
          OutlinedButton(onPressed: () {}, child: Text("outline button")),
          TextButton(onPressed: () {}, child: Text("data")),
          IconButton(onPressed: () {}, icon: Icon(Icons.star)),

          GestureDetector(
            onDoubleTap: () {
              print("container double tapped");
            },
            onTap: () {
              print("container tapped");
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}

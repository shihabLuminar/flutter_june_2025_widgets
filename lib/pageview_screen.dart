import 'package:flutter/material.dart';

class PageviewScreen extends StatelessWidget {
  const PageviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page view")),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.all(10),
          color: Colors.red,
          child: Center(
            child: Text(
              "$index",
              style: TextStyle(color: Colors.white, fontSize: 100),
            ),
          ),
        ),
      ),
    );
  }
}

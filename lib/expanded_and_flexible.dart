import 'package:flutter/material.dart';

class ExpandedAndFlexible extends StatelessWidget {
  const ExpandedAndFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("data"),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 30,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.all(20),
                color: Colors.red,
                height: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.blue,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

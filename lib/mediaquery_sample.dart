import 'package:flutter/material.dart';

class MediaquerySample extends StatelessWidget {
  const MediaquerySample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.sizeOf(context).width * .5,
          height: MediaQuery.sizeOf(context).height * .5,
          color: Colors.red,
        ),
      ),
    );
  }
}

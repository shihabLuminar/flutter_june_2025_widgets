import 'package:flutter/material.dart';
import 'package:flutter_application_1/card_sample_screen.dart';
import 'package:flutter_application_1/circleavatar_sample.dart';
import 'package:flutter_application_1/column_screen.dart';
import 'package:flutter_application_1/container_sample_screen.dart';
import 'package:flutter_application_1/row_screen.dart';
import 'package:flutter_application_1/sample_ui_1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF128C7E),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("My first app"),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        leading: Icon(Icons.bookmark),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 15),
          Icon(Icons.search),
        ],
      ),
      body: Center(
        child: Column(
          spacing: 15,
          children: [
            _customTextButton(
              context,
              title: "Container",
              screen: ContainerSampleScreen(),
            ),
            _customTextButton(
              context,
              title: "Card",
              screen: CardSampleScreen(),
            ),
            _customTextButton(
              context,
              title: "Circle avatar",
              screen: CircleavatarSample(),
            ),
            _customTextButton(context, title: "Column", screen: ColumnScreen()),
            _customTextButton(context, title: "Row", screen: RowScreen()),
            _customTextButton(
              context,
              title: "Sample Ui 1",
              screen: SampleUi1(),
            ),
          ],
        ),
      ),
    );
  }

  TextButton _customTextButton(
    BuildContext context, {
    required String title,
    required Widget screen,
  }) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}

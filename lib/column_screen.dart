import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: Colors.red, width: 100, height: 200),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: Colors.red, width: 100, height: 200),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: Colors.red, width: 100, height: 200),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: Colors.red, width: 100, height: 200),
              ),
              ListTile(
                leading: Icon(Icons.favorite_outline),
                title: Text("title"),
                subtitle: Text("subtitle"),
                trailing: Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

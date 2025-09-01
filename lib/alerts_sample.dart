import 'package:flutter/material.dart';

class AlertsSample extends StatefulWidget {
  const AlertsSample({super.key});

  @override
  State<AlertsSample> createState() => _AlertsSampleState();
}

class _AlertsSampleState extends State<AlertsSample> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.all(30),

                    duration: Duration(seconds: 10),
                    backgroundColor: Colors.red,
                    content: Text("i am snack bar"),
                    action: SnackBarAction(label: "Close", onPressed: () {}),
                  ),
                );
              },
              child: Text("Snack bar"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("my alert"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("this is my dialog"),
                        Text("this is my dialog"),
                      ],
                    ),
                    actions: [
                      ElevatedButton(onPressed: () {}, child: Text("data")),
                      ElevatedButton(onPressed: () {}, child: Text("data")),
                    ],
                  ),
                );
              },
              child: Text("Alert dialogue"),
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.red,
                  context: context,
                  builder: (context) => StatefulBuilder(
                    builder: (context, bottomsetState) => Container(
                      height: MediaQuery.sizeOf(context).height * .7,
                      width: double.infinity,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("$count", style: TextStyle(fontSize: 100)),
                          ElevatedButton(
                            onPressed: () {
                              count++;
                              bottomsetState(() {});
                            },
                            child: Text("+"),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Text("bottom sheet"),
            ),
          ],
        ),
      ),
    );
  }
}

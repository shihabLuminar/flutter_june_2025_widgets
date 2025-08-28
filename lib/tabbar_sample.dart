import 'package:flutter/material.dart';
import 'package:flutter_application_1/card_sample_screen.dart';
import 'package:flutter_application_1/column_screen.dart';
import 'package:flutter_application_1/container_sample_screen.dart';
import 'package:flutter_application_1/pageview_screen.dart';
import 'package:flutter_application_1/row_screen.dart';

class TabbarSample extends StatelessWidget {
  const TabbarSample({super.key});
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.sizeOf(context).width;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Tab bar"),
          bottom: TabBar(
            labelPadding: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            dividerHeight: 0,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,

            indicator: BoxDecoration(color: Colors.white),

            tabs: [
              SizedBox(
                width: screenwidth * .1,
                child: Tab(child: Icon(Icons.camera_alt)),
              ),
              SizedBox(
                width: screenwidth * .3,
                child: Tab(text: "Chat"),
              ),
              SizedBox(
                width: screenwidth * .3,
                child: Tab(text: "Call"),
              ),
              SizedBox(
                width: screenwidth * .3,
                child: Tab(text: "Status"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CardSampleScreen(),
            ContainerSampleScreen(),
            ColumnScreen(),
            PageviewScreen(),
          ],
        ),
      ),
    );
  }
}

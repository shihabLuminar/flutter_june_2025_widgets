import 'package:flutter/material.dart';
import 'package:flutter_application_1/alerts_sample.dart';
import 'package:flutter_application_1/bottom_nav_bar_screen.dart';
import 'package:flutter_application_1/buttons_sample.dart';
import 'package:flutter_application_1/card_sample_screen.dart';
import 'package:flutter_application_1/circleavatar_sample.dart';
import 'package:flutter_application_1/color_screen.dart';
import 'package:flutter_application_1/column_screen.dart';
import 'package:flutter_application_1/container_sample_screen.dart';
import 'package:flutter_application_1/counter_screen.dart';
import 'package:flutter_application_1/expanded_and_flexible.dart';
import 'package:flutter_application_1/grid_view_screen.dart';
import 'package:flutter_application_1/images_sample_screen.dart';
import 'package:flutter_application_1/listview_screen.dart';
import 'package:flutter_application_1/mediaquery_sample.dart';
import 'package:flutter_application_1/navigations_sample.dart';
import 'package:flutter_application_1/pageview_screen.dart';
import 'package:flutter_application_1/row_screen.dart';
import 'package:flutter_application_1/sample_ui_1.dart';
import 'package:flutter_application_1/sample_ui_2.dart';
import 'package:flutter_application_1/stack_sample_screen.dart';
import 'package:flutter_application_1/stful_buttons_samples.dart';
import 'package:flutter_application_1/tabbar_sample.dart';

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
        child: SingleChildScrollView(
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
              _customTextButton(
                context,
                title: "Column",
                screen: ColumnScreen(),
              ),
              _customTextButton(context, title: "Row", screen: RowScreen()),
              _customTextButton(
                context,
                title: "Sample Ui 1",
                screen: SampleUi1(),
              ),
              _customTextButton(
                context,
                title: "stack",
                screen: StackSampleScreen(),
              ),
              _customTextButton(
                context,
                title: "Sample Ui 2",
                screen: SampleUi2(),
              ),
              _customTextButton(
                context,
                title: "Images sample",
                screen: ImagesSampleScreen(),
              ),
              _customTextButton(
                context,
                title: "List view",
                screen: ListviewScreen(),
              ),
              _customTextButton(
                context,
                title: "Grid view",
                screen: GridViewScreen(),
              ),
              _customTextButton(
                context,
                title: "page view",
                screen: PageviewScreen(),
              ),
              _customTextButton(
                context,
                title: "Expanded and Flexible",
                screen: ExpandedAndFlexible(),
              ),
              _customTextButton(
                context,
                title: "Buttons",
                screen: ButtonsSample(),
              ),
              _customTextButton(
                context,
                title: "Navigations",
                screen: NavigationsSample(),
              ),
              _customTextButton(
                context,
                title: "Counter Screen",
                screen: CounterScreen(),
              ),
              _customTextButton(
                context,
                title: "Color Screen",
                screen: ColorScreen(),
              ),
              _customTextButton(
                context,
                title: "Statefull buttons",
                screen: StfulButtonsSamples(),
              ),
              _customTextButton(
                context,
                title: "Tab bar",
                screen: TabbarSample(),
              ),
              _customTextButton(
                context,
                title: "mediaquery",
                screen: MediaquerySample(),
              ),
              _customTextButton(
                context,
                title: "bottom navigation ",
                screen: BottomNavBarScreen(),
              ),
              _customTextButton(
                context,
                title: "Alerts Sample ",
                screen: AlertsSample(),
              ),
            ],
          ),
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

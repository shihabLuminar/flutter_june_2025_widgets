import 'package:flutter/material.dart';

class StfulButtonsSamples extends StatefulWidget {
  const StfulButtonsSamples({super.key});

  @override
  State<StfulButtonsSamples> createState() => _StfulButtonsSamplesState();
}

class _StfulButtonsSamplesState extends State<StfulButtonsSamples> {
  List<String> genders = ["male", "female", "others", "others2"];
  List<String> popupmenus = ["one", "two", "threee", "four", "five", "six"];

  bool isChecked = true;
  bool isOn = true;
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CheckboxListTile(
            title: Text("Checkbox"),
            value: isChecked,
            onChanged: (value) {
              isChecked = value!;
              setState(() {});
            },
          ),

          SwitchListTile(
            title: Text("Switch"),
            value: isOn,
            onChanged: (value) {
              isOn = value;
              setState(() {});
            },
          ),
          RadioGroup(
            groupValue: gender,
            onChanged: (value) {
              gender = value;
              setState(() {});
            },
            child: Column(
              children: [
                RadioListTile(value: "male", title: Text("Male")),
                RadioListTile(value: "female", title: Text("Female")),
                RadioListTile(value: "others", title: Text("Others")),
              ],
            ),
          ),

          PopupMenuButton(
            itemBuilder: (context) =>
                popupmenus.map((e) => PopupMenuItem(child: Text(e))).toList(),
          ),

          DropdownButton(
            value: gender,
            items: List.generate(
              genders.length,
              (index) => DropdownMenuItem(
                child: Text(genders[index].toUpperCase()),
                value: genders[index],
              ),
            ),
            onChanged: (value) {
              gender = value;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

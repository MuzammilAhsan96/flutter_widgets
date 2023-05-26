import 'package:flutter/material.dart';
import 'package:hello_world/state/check_box_state.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  final allNotifications = CheckBoxState(title: "All Notifications");
  final notifications = [
    CheckBoxState(title: "Colleagues"),
    CheckBoxState(title: "Messages"),
    CheckBoxState(title: "Groups"),
    CheckBoxState(title: "calls"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Check Box"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          buildGroupCheckBox(allNotifications),
          const Divider(
            color: Colors.grey,
          ),
          // buildSingleCheckBox(),
          // buildSingleCheckBox(),
          // buildSingleCheckBox(),
          // buildSingleCheckBox(),
          ...notifications.map(buildSingleCheckBox).toList(),
        ],
      ),
    );
  }

  Widget buildSingleCheckBox(CheckBoxState checkBox) => CheckboxListTile(
        title: Text(checkBox.title),
        activeColor: Colors.red,
        controlAffinity: ListTileControlAffinity.leading,
        value: checkBox.value,
        onChanged: (value) => setState(() {
          checkBox.value = value!;
          allNotifications.value =
              notifications.every((notification) => notification.value);
        }),
      );

  Widget buildGroupCheckBox(CheckBoxState checkBox) => CheckboxListTile(
        title: Text(checkBox.title),
        activeColor: Colors.red,
        controlAffinity: ListTileControlAffinity.leading,
        value: checkBox.value,
        onChanged: toggleGroupCheckBox,
      );

  void toggleGroupCheckBox(bool? value) {
    if (value == null) return;
    setState(() {
      allNotifications.value = value;
      for (var notification in notifications) {
        notification.value = value;
      }
    });
  }
}

import 'package:flutter/material.dart';
import 'package:hello_world/pages/date_picker.dart';
import 'package:hello_world/pages/date_range_picker.dart';
import 'package:hello_world/pages/menu_items.dart';
import 'package:hello_world/pages/time_picker.dart';

import '../model/menu_item_model.dart';


class MyPopUpMenuButton extends StatefulWidget {
  const MyPopUpMenuButton({Key? key}) : super(key: key);

  @override
  State<MyPopUpMenuButton> createState() => _MyPopUpMenuButtonState();
}

class _MyPopUpMenuButtonState extends State<MyPopUpMenuButton> {
  @override
 /* Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: PopupMenuButton(
          onSelected: (item) => print(item),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: Text("Date Picker"),
            ),
            PopupMenuItem(
              value: 2,
              child: Text("Time Picker"),
            ),
            PopupMenuItem(
              value: 3,
              child: Text("Date Range Picker"),
            ),
          ],
        ),
      ),
    );*/
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings Pop-Menu"),
        centerTitle: true,
        actions: [
          PopupMenuButton<MenuItem>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              ...MenuItems.itemsFirst.map(buildItem).toList(),
              const PopupMenuDivider(),
              ...MenuItems.itemsSecond.map(buildItem).toList(),
            ],
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
      value: item,
      child: Row(
        children: [
          Icon(
            item.icon,
            color: Colors.black,
            size: 20,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            item.text,
          ),
        ],
      ));

  onSelected(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.itemDate:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyDatePicker()));
        break;
      case MenuItems.itemTime:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyTimePicker()));
        break;
      case MenuItems.itemDateRange:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MyDateRangePicker()));
        break;
    }
  }
}

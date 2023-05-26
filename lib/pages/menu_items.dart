import 'package:flutter/material.dart';

import '../model/menu_item_model.dart';

class MenuItems {
  static const List<MenuItem> itemsFirst = [itemDate, itemTime];
  static const List<MenuItem> itemsSecond = [itemDateRange];

  static const itemDate = MenuItem(
     text: "Date Picker",
    icon: Icons.calendar_today,
  );

  static const itemTime = MenuItem(
    text: "Time Picker",
    icon: Icons.punch_clock,
  );

  static const itemDateRange = MenuItem(
    text: "Date Range Picker",
    icon: Icons.calendar_month,
  );
}

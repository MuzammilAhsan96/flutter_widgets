import 'package:flutter/material.dart';
import 'package:hello_world/pages/bottom_navigation_bar.dart';
import 'package:hello_world/pages/check_box.dart';
import 'package:hello_world/pages/date_picker.dart';
import 'package:hello_world/pages/date_range_picker.dart';
import 'package:hello_world/pages/drop_down.dart';
import 'package:hello_world/pages/first_screen.dart';
import 'package:hello_world/pages/home_page.dart';
import 'package:hello_world/pages/login_page.dart';
import 'package:hello_world/pages/my_snack_bar.dart';
import 'package:hello_world/pages/pop_up_menu.dart';
import 'package:hello_world/pages/radio_button.dart';
import 'package:hello_world/pages/rows_columns_page.dart';
import 'package:hello_world/pages/simple_dialog.dart';
import 'package:hello_world/pages/slider.dart';
import 'package:hello_world/pages/switch.dart';
import 'package:hello_world/pages/tab_bar.dart';
import 'package:hello_world/pages/time_picker.dart';

import 'alert_dialog.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  //var list = List<String>.generate(10000, (i) => 'Item $i');
  List<String> list = [
    "ListView",
    "Login Page",
    "Bottom Navigation Bar",
    "Simple Dialog",
    "Alert Dialog",
    "Rows Column",
    "Snack Bar",
    "Drop Down",
    "Tab Bar",
    "Date Picker",
    "Time Picker",
    "Date Range Picker",
    "Pop-up Menu Button",
    "Check Box",
    "Radio Button",
    "Switch",
    "Slider",
    "Data b/w Screens"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "List",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widgets"),
        ),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        list[index],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  shadowColor: Colors.grey,
                  borderOnForeground: true,
                ),
              ),
              onTap: () {
                switch (index) {
                  case 0:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomePage()));
                    break;
                  case 1:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginPage()));
                    break;
                  case 2:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavigationBarPage()));
                    break;
                  case 3:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MySimpleDialog()));
                    break;
                  case 4:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyAlertDialog()));
                    break;
                  case 5:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RowsColumnsPage()));
                    break;
                  case 6:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MySnackBar()));
                    break;
                  case 7:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MyDropDown()));
                    break;
                  case 8:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MyTabBar()));
                    break;
                  case 9:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MyDatePicker()));
                    break;
                  case 10:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MyTimePicker()));
                    break;
                  case 11:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MyDateRangePicker()));
                    break;
                  case 12:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MyPopUpMenuButton()));
                    break;
                  case 13:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MyCheckBox()));
                    break;
                  case 14:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MyRadioButton()));
                    break;
                  case 15:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MySwitch()));
                    break;
                  case 16:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MySlider()));
                    break;
                  case 17:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const FirstScreen()));
                    break;
                }
              },
            );
          },
        ),
      ),
    );
  }
}

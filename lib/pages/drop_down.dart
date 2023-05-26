import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({Key? key}) : super(key: key);

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  var _currencies = [
    'Rupees',
    'Dollars',
    'Pounds',
    'Dirham',
    'Rial',
    'Denar',
    'Euro'
  ];
  var _currentItemSelected = 'Rupees';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drop Down"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              DropdownButton(
                items: _currencies.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                      child: Text(dropDownStringItem),
                      value: dropDownStringItem);
                }).toList(),
                onChanged: (String? newItemSelected) {
                  onDropDownItemSelected(newItemSelected);
                },
                value: _currentItemSelected,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onDropDownItemSelected(String? newItemSelected) {
    setState(() {
      _currentItemSelected = newItemSelected!;
    });
  }
}

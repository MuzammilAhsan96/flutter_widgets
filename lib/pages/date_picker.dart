import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({Key? key}) : super(key: key);

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime? date;

  String getDateText() {
    if (date == null) {
      return "Select Date";
    } else {
      return DateFormat('dd-MM-yyyy').format(date!);
    }
    //return "${date?.day}/${date?.month}/${date?.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker"),
      ),
      body: Center(
        child: TextButton(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              getDateText(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          onPressed: () {
            pickDate(context);
          },
        ),
      ),
    );
  }

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: date ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 25),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (newDate == null) return null;
    setState(() {
      date = newDate;
    });
  }


}

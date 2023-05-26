import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDateRangePicker extends StatefulWidget {
  const MyDateRangePicker({Key? key}) : super(key: key);

  @override
  State<MyDateRangePicker> createState() => _MyDateRangePickerState();
}

class _MyDateRangePickerState extends State<MyDateRangePicker> {
  DateTimeRange? dateRange;

  String getFromText() {
    if (dateRange == null) {
      return "From";
    } else {
      return DateFormat('dd-MM-yyyy').format(dateRange?.start as DateTime);
    }
  }

  String getUntilText() {
    if (dateRange == null) {
      return "Until";
    } else {
      return DateFormat('dd-MM-yyyy').format(dateRange?.end as DateTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker"),
      ),
      body: Center(
          child: Row(
        children: [
          TextButton(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                getFromText(),
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            onPressed: () {
              pickDateRange(context);
            },
          ),
          TextButton(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                getUntilText(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            onPressed: () {
              pickDateRange(context);
            },
          ),
        ],
      )),
    );
  }

  Future pickDateRange(BuildContext context) async {
    final initialDateRange = DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now().add(const Duration(hours: 24 * 3)));
    final newDateRange = await showDateRangePicker(
        context: context,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5),
        initialDateRange: initialDateRange);
    if (newDateRange == null) return null;
    setState(() {
      dateRange = newDateRange;
    });
  }
}

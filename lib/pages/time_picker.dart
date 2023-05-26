import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  const MyTimePicker({Key? key}) : super(key: key);

  @override
  State<MyTimePicker> createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  TimeOfDay? time;

  String getTimeText() {
    if (time == null) {
      return "Select Time";
    } else {
      final hours = time?.hour.toString().padLeft(2, '0');
      final minutes = time?.minute.toString().padLeft(2, '0');
      return '$hours:$minutes';
    }
    //return "${date?.day}/${date?.month}/${date?.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time Picker"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              getTimeText(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          onPressed: () {
            pickTime(context);
          },
        ),
      ),
    );
  }

  Future pickTime(BuildContext context) async {
    final initialTime = TimeOfDay.now();
    final newTime = await showTimePicker(
      context: context,
      initialTime: time ?? initialTime,
    );
    if (newTime == null) return null;
    setState(() {
      time = newTime;
    });
  }
}

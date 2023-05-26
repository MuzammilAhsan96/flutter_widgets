import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String value;

  const SecondScreen({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.value,
              style: const TextStyle(fontSize: 32),
            ),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text("Return Data"),
              onPressed: () {
                Navigator.of(context).pop('Screen 2 Data');
              },
            ),
          ],
        ),
      ),
    );
  }
}

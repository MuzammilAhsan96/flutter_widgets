import 'package:flutter/material.dart';
import 'package:hello_world/pages/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String value = "Screen 1 Data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Text(
                value,
                style: const TextStyle(fontSize: 32),
              ),
              onTap: () {
                print("I clicked it");
              },
            ),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text("Pass Data"),
              onPressed: () async {
                final newValue =
                    await Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondScreen(
                    value: value,
                  ),
                ));
                setState(() {
                  value = newValue;
                });
              },
            ),
          ],
        ),
        /*ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text("Pass Data"),
          onPressed: () async {
            final newValue = await Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SecondScreen(
                value: value,
              ),
            ));
            setState(() {
              this.value = newValue;
            });
          },
        ),*/
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double value = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider"),
        centerTitle: true,
      ),
      body: Center(
        child: Slider(
          autofocus: false,
          min: 0,
          max: 100,
          divisions: 100,
          value: value,
          activeColor: Colors.red,
          inactiveColor: Colors.red.shade100,
          label: value.round().toString(),
          onChanged: (double value) {
            setState(() {
              this.value = value;
            });
          },
        ),
      ),
    );
  }
}

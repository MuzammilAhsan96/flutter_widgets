import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  const BgImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/bg.jpg",
      fit: BoxFit.cover,
      color: Colors.grey.withOpacity(0.7),
      colorBlendMode: BlendMode.darken,
    );
  }
}

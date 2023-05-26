import 'package:flutter/material.dart';

import 'bg_image.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard(
      {Key? key, required TextEditingController nameController})
      : _nameController = nameController,
        super(key: key);
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BgImage(),
        const SizedBox(height: 20),
        const Text(
          "myText",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            obscureText: false,
            decoration: const InputDecoration(
                hintText: "Enter name",
                labelText: "Name",
                border: OutlineInputBorder()),
          ),
        )
      ],
    );
  }
}

// class ChangeNameCard extends StatelessWidget {
//   const ChangeNameCard({
//     required Key key,
//     required this.myText,
//     required TextEditingController nameController,
//   })  : _nameController = nameController,
//         super(key: key);
//
//   final String myText;
//   final TextEditingController _nameController;
//
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }

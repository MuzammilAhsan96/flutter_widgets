import 'package:flutter/material.dart';

class MySimpleDialog extends StatefulWidget {
  const MySimpleDialog({Key? key}) : super(key: key);

  @override
  State<MySimpleDialog> createState() => _MySimpleDialogState();
}

enum Movies { CaptainMarvel, Shazam }

class _MySimpleDialogState extends State<MySimpleDialog> {
  Future<void> openDialog() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("Select a movie!", style: TextStyle(fontSize: 20)),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Movies.CaptainMarvel);
                },
                child: const Text("Captain Marvel", style: TextStyle(fontSize: 15)),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Movies.Shazam);
                },
                child: const Text("Shazam", style: TextStyle(fontSize: 15)),
              )
            ],
          );
        })) {
      case Movies.CaptainMarvel:
        print("Captain Marvel Selected");
        break;
      case Movies.Shazam:
        print("Shazam Selected");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Simple Dialog",
          style: TextStyle(
              fontFamily: "Raleway",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: IconButton(
          icon: const Icon(
            Icons.movie_rounded,
            size: 50,
          ),
          onPressed: () {
            openDialog();
          },
        ),
      ),
    );
  }
}

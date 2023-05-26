import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int current = 0;
  final screens = [
    const Center(
      child: Text(
        "Home",
        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
      ),
    ),
    const Center(
      child: Text(
        "Feed",
        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
      ),
    ),
    const Center(
      child: Text(
        "Chat",
        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
      ),
    ),
    const Center(
      child: Text(
        "Profile",
        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
        centerTitle: true,
      ),
      body: screens[current],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedFontSize: 16,
        unselectedFontSize: 12,
        showUnselectedLabels: false,
        iconSize: 40,
        currentIndex: current,
        onTap: (index) => setState(() => (current = index)),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
            //backgroundColor: Colors.blue
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Feed",
            //backgroundColor: Colors.red
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
            //backgroundColor: Colors.brown
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            //backgroundColor: Colors.green
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation"),
      ),
      body: const Center(
        child: Text("Center Text"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: ("Favorite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: ("Settings"),
          ),
        ],
        showSelectedLabels: false, //won't show label on selected icon
        showUnselectedLabels: false, //won't show label on unselected icon
        backgroundColor: Colors.yellow,
      ),
    );
  }
}

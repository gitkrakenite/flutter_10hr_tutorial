import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0; //the variable for indication

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

        onTap: (index) => {
          setState(() {
            currentIndex = index; //change variable to the tapped index
          })
        },
        currentIndex: currentIndex,
        showSelectedLabels: false, //won't show label on selected icon
        showUnselectedLabels: false, //won't show label on unselected icon
        backgroundColor: Colors.yellow,
      ),
    );
  }
}

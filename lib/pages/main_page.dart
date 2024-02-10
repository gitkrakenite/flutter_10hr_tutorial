import 'package:flutter/material.dart';
import 'package:flutter_10hr_tutorial/pages/home_page.dart';

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
      body: pages[currentIndex], //call pages the current index now
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
        type: BottomNavigationBarType.fixed, //the icons stay in place
      ),
    );
  }

  // okay to now change the page when you click
  final pages = [
    const HomePage(),
    const Center(
      child: Text(
        "Favorites",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
    const Center(
      child: Text(
        "Settings",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
    //add more pages here in order
  ];
}

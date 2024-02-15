import 'package:flutter/material.dart';
import 'package:flutter_10hr_tutorial/pages/home_page.dart';
import 'package:flutter_10hr_tutorial/pages/profile_page.dart';

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
            icon: Icon(Icons.message_outlined),
            label: ("Message"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ("profile"),
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
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
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
        "Messages",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
    const ProfilePage()
    //add more pages here in order
  ];
}

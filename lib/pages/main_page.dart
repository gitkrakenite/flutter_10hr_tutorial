import 'package:flutter/material.dart';
import 'package:flutter_10hr_tutorial/pages/home_page.dart';
import 'package:flutter_10hr_tutorial/pages/profile_page.dart';
import 'package:flutter_10hr_tutorial/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home; //the variable for indication

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex.index], //call pages the current index now
      bottomNavigationBar: MyBottomNavigation(
        currentIndex: currentIndex,
        onTap: (value) => {
          setState(() {
            currentIndex = value;
          })
        },
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
        "Add Post",
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

// we have decided to create our own navigation in order to customize it

enum Menus { home, favorite, add, message, user }

class MyBottomNavigation extends StatelessWidget {
  final Menus? currentIndex; //the index of tapped icon
  final ValueChanged<Menus>? onTap; //call back int function called onTap

  const MyBottomNavigation({
    super.key,
    this.currentIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: const EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap!(Menus.home),
                      icon: Icon(
                        color: currentIndex == Menus.home
                            ? Colors.black
                            : Colors.black54,
                        Icons.home,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap!(Menus.favorite),
                      icon: Icon(
                        color: currentIndex == Menus.favorite
                            ? Colors.black
                            : Colors.black54,
                        Icons.favorite,
                        size: 28,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap!(Menus.message),
                      icon: Icon(
                        color: currentIndex == Menus.message
                            ? Colors.black
                            : Colors.black54,
                        Icons.message,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap!(Menus.user),
                      icon: Icon(
                        color: currentIndex == Menus.user
                            ? Colors.black
                            : Colors.black54,
                        Icons.person,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap!(Menus.add),
              child: Container(
                height: 64,
                width: 64,
                decoration: const BoxDecoration(
                    color: AppColors.primary, shape: BoxShape.circle),
                child: const Icon(
                  Icons.add,
                  size: 24,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

# flutter_10hr_tutorial

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Normal Bottom Navigation

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

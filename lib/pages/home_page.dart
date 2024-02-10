import 'package:flutter/material.dart';
import 'package:flutter_10hr_tutorial/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text(
          "PizzaHut",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(Icons.location_on_outlined, color: Colors.white),
        ],
      ),
      body: ListView(
        children: const [
          SingleUser(),
        ],
      ),
    );
  }
}

class SingleUser extends StatelessWidget {
  const SingleUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/lucy.jpg",
          height: 40,
          width: 40,
        ),
        const SizedBox(
          width: 16,
        ),
        const Text(
          "Sarah Doe",
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

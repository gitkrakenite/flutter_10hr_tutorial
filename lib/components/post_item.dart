import 'package:flutter/material.dart';
import 'package:flutter_10hr_tutorial/styles/app_text.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
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
                style: AppText.subtitle3,
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Image.network(
              "https://images.pexels.com/photos/312839/pexels-photo-312839.jpeg?auto=compress&cs=tinysrgb&w=600"),
          const SizedBox(
            height: 12,
          ),
          const Text(
              "The ocean The ocean is a calm awesome place is The ocean is a calm awesome place a calm awesomeThe ocean is a calm awesome place place 😎",
              style: AppText.subtitle3),
        ],
      ),
    );
  }
}

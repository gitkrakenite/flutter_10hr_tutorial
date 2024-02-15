import 'package:flutter/material.dart';
import 'package:flutter_10hr_tutorial/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
              "https://images.pexels.com/photos/1308886/pexels-photo-1308886.jpeg?auto=compress&cs=tinysrgb&w=600",
              width: 90,
              height: 90),
          const SizedBox(
            height: 24,
          ),
          Text("Jane Doe", style: AppText.header2),
          const SizedBox(
            height: 12,
          ),
          Text("Madagascar", style: AppText.subtitle3),
          const SizedBox(
            height: 24,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "472",
                    style: AppText.header2,
                  ),
                  Text("Followers"),
                ],
              ),
              Column(
                children: [
                  Text(
                    "119",
                    style: AppText.header2,
                  ),
                  Text("Posts"),
                ],
              ),
              Column(
                children: [
                  Text(
                    "600",
                    style: AppText.header2,
                  ),
                  Text("Following"),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            indent: 16,
            height: 24,
          ),
        ],
      ),
    );
  }
}

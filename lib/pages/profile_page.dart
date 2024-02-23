import 'package:flutter/material.dart';
import 'package:flutter_10hr_tutorial/components/app_bar.dart';
import 'package:flutter_10hr_tutorial/components/user_avatar.dart';
import 'package:flutter_10hr_tutorial/config/app_routes.dart';
import 'package:flutter_10hr_tutorial/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolWidget(
        title: "Profile",
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert_outlined),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Edit"),
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  },
                ),
                PopupMenuItem(
                  child: Text("Logout"),
                  onTap: () {
                    print("Logout Tapped");
                  },
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          UserAvatar(size: 90.0),
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

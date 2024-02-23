import 'package:flutter/material.dart';
import 'package:flutter_10hr_tutorial/components/app_bar.dart';
import 'package:flutter_10hr_tutorial/components/post_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolWidget(
        title: "Flutter Tutorial",
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.location_city),
          )
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return PostItem();
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 24,
            );
          },
          itemCount: 30),
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 1000; i++) {
      users.add(PostItem());
    }
    return users;
  }
}

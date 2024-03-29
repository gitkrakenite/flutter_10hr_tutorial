import 'package:flutter/material.dart';
import 'package:flutter_10hr_tutorial/styles/app_colors.dart';
import 'package:flutter_10hr_tutorial/styles/app_text.dart';

class ToolWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const ToolWidget({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: Text(
          title,
          style: AppText.header1,
        ),
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(64);
}

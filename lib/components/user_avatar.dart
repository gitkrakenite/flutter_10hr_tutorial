import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size;

  const UserAvatar({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return //allows border radius
        ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(16),
      ),
      child: Image.network(
        "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=600",
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}

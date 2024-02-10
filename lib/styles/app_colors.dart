import "package:flutter/material.dart";

//flutter does not understand hex code so to do it we need to do something
// Color(0xff<hex code color>);
// the last f is opacity set to full you can set it to 0 or 1
// Color(0xf(1 or 0 or f)<hex code color>)

class AppColors {
  static const primary = Color(0xffFBD512);
  static const font = Color(0xffD8D8D8);
  static const font2 = Color(0xff373737);
  static const disableFont = Color(0xffA7A7A7);
  static const disableButton = Color(0xff303030);
  static const background = Color(0xff1A2947);
  static const black = Color(0xff000000);
  static const white = Color(0xffffffff);
  static final fieldColor = const Color(0xFFD9D9D9).withOpacity(0.6);
}

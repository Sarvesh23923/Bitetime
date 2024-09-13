import 'package:flutter/material.dart';

class Navigation {
  static void naviagteTo(BuildContext context, Widget destination) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => destination));
  }

  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }
}

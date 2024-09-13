// ignore_for_file: prefer_const_constructors

import 'package:bitetime/models/constants.dart';
import 'package:bitetime/models/titles.dart';
import 'package:bitetime/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset("assets/icons/back.svg"))),
        body: ListView(children: [
          SizedBox(height: screenHeight * 0.1),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Titles(title: "Reset Password!"),
                    SizedBox(height: screenHeight * 0.02),
                    Description(
                        description: "Enter a password that no one knows"),
                    SizedBox(height: screenHeight * 0.05),
                    Description(description: "Password"),
                    SizedBox(height: screenHeight * 0.03),
                    passwordField(),
                    SizedBox(height: screenHeight * 0.05),
                    Description(description: "Confirm Password"),
                    SizedBox(height: screenHeight * 0.03),
                    passwordField(),
                    SizedBox(height: screenHeight * 0.1),
                    button(label: "Confirm", destination: LoginScreen())
                  ]))
        ]));
  }
}

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../ui/screens/login_screen.dart';

const LinearGradient primaryColor = LinearGradient(
  colors: [Color.fromRGBO(74, 242, 102, 1), Color.fromRGBO(2, 224, 40, 1)],
  begin: Alignment.topLeft,
  end: Alignment(0.8, 1),
);

const secondaryColor = Color.fromRGBO(28, 231, 63, 1);

class userButton extends StatelessWidget {
  const userButton({
    super.key,
    required this.userType,
  });
  final String userType;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      },
      child: Container(
          width: screenWidth * 0.8,
          height: screenHeight * 0.05,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(userType,
                style: GoogleFonts.roboto(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.w700,
                )),
          )),
    );
  }
}

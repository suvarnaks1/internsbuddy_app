import 'package:buddy_pair/SplashScreen/Screens/rotationWidget.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Smaller Rotating Radial Profile Model
        const RotationWidget(),
        const SizedBox(height: 10),

        // Text
        const Text(
          "Let's meet new\npeople around you",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFeatures: [FontFeature.stylisticAlternates()],
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 20),

        // Buttons
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              _buildLoginButton(
                text: 'Login with Email/Phone',
                backgroundColor: const Color(0XFF4b164c),
                textColor: Colors.white,
                iconPath: 'assets/phone icon.jpeg',
              ),
              const SizedBox(height: 15),
              _buildLoginButton(
                text: 'Login with Google',
                backgroundColor: const Color.fromARGB(255, 245, 188, 226),
                textColor: Color(0XFF4b164c),
                iconPath: 'assets/google_logo.png',
              ),
              const SizedBox(height: 10),
              const Text(
                "Don't have an account? Sign Up",
                style: TextStyle(color: Color.fromARGB(179, 19, 18, 18)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Login Button Widget
  Widget _buildLoginButton({
    required String text,
    required Color backgroundColor,
    required Color textColor,
    required String iconPath,
  }) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(iconPath),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(color: textColor, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

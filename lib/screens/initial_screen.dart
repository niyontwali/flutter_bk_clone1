import 'package:bk_clone_1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Choose a language',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 23,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Please select your preferred language you will be using throughout',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                letterSpacing: 1,
                height: 2,
                leadingDistribution: TextLeadingDistribution.even,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                CustomButton('Kinyarwanda'),
                SizedBox(height: 15),
                CustomButton('English'),
                SizedBox(height: 15),
                CustomButton('Français'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

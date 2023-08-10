import 'package:bk_clone_1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen(this.index, this.onPressed, {super.key});

  final int index;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          const Padding(
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
          const Padding(
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
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                CustomButton(
                  'Kinyarwanda',
                  onPressed,
                  index,
                ),
                const SizedBox(height: 15),
                CustomButton(
                  'English',
                  onPressed,
                  index,
                ),
                const SizedBox(height: 15),
                CustomButton(
                  'Français',
                  onPressed,
                  index,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

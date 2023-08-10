import 'package:flutter/material.dart';

import 'package:bk_clone_1/helpers/utils.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.screenBody,
  });

  final Widget screenBody;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF0e4193),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Image.asset(
              logo,
              width: 35,
              height: 35,
            ),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 14, 65, 147),
              Color.fromARGB(255, 33, 91, 185),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          image: DecorationImage(
            alignment: Alignment.bottomCenter,
            image: AssetImage(wrapper),
          ),
        ),
        child: screenBody,
      ),
    );
  }
}

// const InitialScreen()

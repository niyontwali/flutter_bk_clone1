import 'package:bk_clone_1/screens/initial_screen.dart';
import 'package:bk_clone_1/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ).then(
    (fn) => runApp(
      const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 1;

  void onPressed() {
    setState(() {
      index = 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "BK Clone",
      debugShowCheckedModeBanner: false,
      home: CustomScaffold(
        screenBody: InitialScreen(),
      ),
    );
  }
}

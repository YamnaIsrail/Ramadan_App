import 'package:flutter/material.dart';
import 'Screens/StartedScreens/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffd6a75f)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:ramadan_app/Screens/Home_Screen/Home_Screen.dart';
import 'Screens/StarterScreens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDlnNmA1eOTssQ9ZigvGYw59ln7ZJmrwXQ",
      authDomain: "",
      projectId: "ramadanapp-2457e",
      storageBucket: "",
      messagingSenderId: "450704756196",
      appId: "1:450704756196:android:2bb813201c6c36d780cbf1",
    ),
  ); // Initialize Firebase

  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ramadan App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffd6a75f)),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}


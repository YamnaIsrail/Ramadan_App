import 'package:flutter/material.dart';
import 'package:ramadan_app/widgets/Colors.dart';

import 'SplashScreen2.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
        Container(
          color: Color(0xff23190d),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(

                  )),
              Expanded(
                flex: 2,
                child: Container(
                  width: 500,
                  height: double.infinity,
                  child: Image.asset(
                    'assets/images/rail.png',
                    //fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),

        ),

          // Text on Top
          Positioned(
            top: 50.0,
            left: 16.0,
            right: 16.0,
            child: Text(
              'Happy Ramadan \nKareen',
              style: TextStyle(
                color: primaryColor,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // Text on Bottom
          Positioned(
            top: 172.0,
            left: 16.0,
            right: 16.0,
            child: Text(
              'Ramdan is blessings from Allah!',
              style: TextStyle(
                color: primaryColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // Floating Button
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder)=>SplashScreen2()))
                ;
              },
              splashColor: primaryColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              child: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}


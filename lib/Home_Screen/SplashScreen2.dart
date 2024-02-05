import 'package:flutter/material.dart';
import 'package:ramadan_app/widgets/Colors.dart';

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      color: primaryColor,
                      width: 500,
                      height: double.infinity,
                      child: Image.asset(
                        'assets/images/rail.png',
                        //fit: BoxFit.cover,
                      ),
                    ),),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    color: secondaryColor,
                    child: Column(
                      children: [
                        Positioned(
                          top: 50.0,
                          // left: 16.0,
                          // right: 16.0,
                          child: Text(
                            'Happy Ramadan Kareen',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),

                        // Text on Bottom
                        Positioned(
                          top: 100.0,
                          left: 16.0,
                          right: 16.0,
                          child: Text(
                            'Ramdan is blessings from Allah!',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),


          // Floating Button
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: ElevatedButton(
              onPressed: () {

              },
             // splashColor: primaryColor,
            //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              child: Row(
                children: [
                  //Text("Explore"),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


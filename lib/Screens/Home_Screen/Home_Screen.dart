import 'package:flutter/material.dart';
import 'package:ramadan_app/footer.dart';
import 'package:ramadan_app/widgets/Colors.dart';

import 'Home_screen_components/card.dart';
import 'Home_screen_components/greetings.dart';
import 'Home_screen_components/icon_cards.dart';
import 'Home_screen_components/prayer_timings.dart';
import 'Home_screen_components/top_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
         child: Padding(
           padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                greetings(),
                SizedBox(height: 10),
                myTopBar(),
                SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      children: [
                        MyCard(time: "4:00 am", title: "Sehar"),
                        MyCard(time: "7:00 pm", title: "Iftar")
                      ],
                    ),
                   SizedBox(width: 15,),
                   Container(
                     color: primaryColor,
                     child: Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Icon(Icons.wb_twilight, size: 30),
                             SizedBox(width: 30),
                             Switch(value: true, onChanged: (onChanged) {}),
                           ],
                         ),
                         Text(
                           "Prayer Timings",
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18
                           ),
                         ),
                         PrayerTimes()
                       ],
                     ),
                   )
                   // PrayerTimes()
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconCards(
                      myicon: Icons.timer_outlined,
                      title: "Prayer Time",
                    ),

                    IconCards(
                      myicon: Icons.my_library_books_outlined,
                      title: "Al Quran",
                    ),

                    IconCards(
                      myicon: Icons.mosque,
                      title: "Masjid",
                    ),
                  ],
                )
              ],
            ),
          ),
      ),
      ),
      persistentFooterButtons: [
        myFooter()
      ],
    );
  }
}

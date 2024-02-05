import 'package:flutter/material.dart';

class PrayerTimes extends StatefulWidget {
  const PrayerTimes({super.key});

  @override
  State<PrayerTimes> createState() => _PrayerTimesState();
}

class _PrayerTimesState extends State<PrayerTimes> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Prayer Times"),
        ),
        ListTile(
          title: Text("Fajar"),
          trailing: Text("4:00 am"),
        ),
        ListTile(
          title: Text("Sunrise"),
          trailing: Text("4:00 am"),
        ),
        ListTile(
          title: Text("Duhur"),
          trailing: Text("4:00 am"),
        ),
        ListTile(
          title: Text("Asar"),
          trailing: Text("4:00 am"),
        ),
        ListTile(
          title: Text("Maghrib"),
          trailing: Text("4:00 am"),
        ),
        ListTile(
          title: Text("Isha"),
          trailing: Text("4:00 am"),
        ),
      ],
    );
  }
}

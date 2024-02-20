import 'package:flutter/material.dart';
import 'package:adhan_dart/adhan_dart.dart';
import 'package:intl/intl.dart';
import 'package:ramadan_app/Screens/PrayerTimings/custom_list_tile.dart';
import 'package:ramadan_app/Screens/PrayerTimings/prayer_time_service.dart';
import 'package:ramadan_app/widgets/Colors.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class PrayerTimesPage extends StatefulWidget {
  const PrayerTimesPage({Key? key}) : super(key: key);

  @override
  State<PrayerTimesPage> createState() => _PrayerTimesPageState();
}

class _PrayerTimesPageState extends State<PrayerTimesPage> {
  final prayerTimesService = PrayerTimesService();

  @override
  void initState() {
    super.initState();
    loadPrayerTimes();
  }

  Future<void> loadPrayerTimes() async {
    await prayerTimesService.fetchPrayerTimes();
    setState(() {}); // Trigger a rebuild after fetching prayer times
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        title: Text('Prayer Times'),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            CustomListTile(
              title: 'Fajr',
              tileColor: primaryColor,
              trailing: DateFormat('hh:mm a').format(prayerTimesService.fajar),
            ),
            SizedBox(height: 30),
            CustomListTile(
              title: 'Sunrise',
              tileColor: primaryColor,
              trailing:
              DateFormat('hh:mm a').format(prayerTimesService.sunrise),
            ),
            SizedBox(height: 30),
            CustomListTile(
              title: 'Dhuhr',
              tileColor: primaryColor,
              trailing:
              DateFormat('hh:mm a').format(prayerTimesService.dhuhr),
            ),
            SizedBox(height: 30),
            CustomListTile(
              title: 'Asr',
              tileColor: primaryColor,
              trailing: DateFormat('hh:mm a').format(prayerTimesService.asar),
            ),
            SizedBox(height: 30),
            CustomListTile(
              title: 'Maghrib',
              tileColor: primaryColor,
              trailing:
              DateFormat('hh:mm a').format(prayerTimesService.maghrib),
            ),
            SizedBox(height: 30),
            CustomListTile(
              title: 'Isha',
              tileColor: primaryColor,
              trailing:
              DateFormat('hh:mm a').format(prayerTimesService.isha),
            ),
          ],
        ),
      ),
    );
  }
}
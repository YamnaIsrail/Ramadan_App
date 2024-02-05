import 'package:flutter/material.dart';

class IconCards extends StatefulWidget {
  IconData myicon;
  String title;
   IconCards({
    required this.title,
     required this.myicon});

  @override
  State<IconCards> createState() => _IconCardsState();
}

class _IconCardsState extends State<IconCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffe1b983),
        borderRadius: BorderRadius.circular(18)
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Icon(
              widget.myicon,
              color: Colors.white,
              size: 20,
            ),
            Text("${widget.title}")
          ],
        ),
      ),
    );
  }
}

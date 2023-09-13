import 'package:flutter/material.dart';

// ignore: must_be_immutable
class St extends StatelessWidget {
  // St({super.key});
  String displayimage;
  St({required this.displayimage});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 4),
            borderRadius: BorderRadius.circular(100)),
        child: CircleAvatar(backgroundImage: AssetImage(displayimage)),
      ),
      title: Text(
        'My status',
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        '12:45',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

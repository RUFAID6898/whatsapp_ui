import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cl extends StatelessWidget {
  // const Cl({super.key});
  String displayimage;
  Cl({required this.displayimage});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(displayimage),
      ),
      title: const Text(
        'Rufaid',
        style: TextStyle(color: Colors.white),
      ),
      subtitle: const Row(
        children: [
          Icon(
            Icons.call_missed,
            color: Colors.red,
          ),
          Text(
            'Yesterday,3:34pm',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      trailing: const Icon(
        Icons.call,
        color: Colors.green,
      ),
    );
  }
}

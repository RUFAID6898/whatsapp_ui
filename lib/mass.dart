import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mss extends StatelessWidget {
  // const Mss({super.key});
  String sedmassege;
  String receviemessage;
  Mss({required this.receviemessage, required this.sedmassege});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 10),
              decoration: BoxDecoration(color: Colors.white),
              child: Text(receviemessage),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          alignment: Alignment.centerRight,
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(color: Colors.white),
              child: Text(sedmassege),
            ),
          ),
        ),
      ],
    );
  }
}

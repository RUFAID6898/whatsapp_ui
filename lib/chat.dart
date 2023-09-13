import 'package:flutter/material.dart';
import 'package:flutter_application_wathsapp/id.dart';
// import 'package:flutter_application_wathsapp/massage.dart';
// import 'package:flutter_application_wathsapp/name.dart';
import 'package:flutter_application_wathsapp/sarch.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    // List ruf = ['rufaid', 'rayyes', 'rahhof'];
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 24, 24, 24),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 23, 167, 20),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sarch(),
                ));
          },
          child: Icon(Icons.chat),
        ),
        body: ListView(
          children: [
            for (int i = 1; i < 10; i++)
              Id(
                  displayimage: 'assets/imag/pic$i.jpg',
                  time: '12:3pm',
                  masseage: '44',
                  number: '9207993783',
                  name: 'rayees'),
          ],
        ));
  }
}

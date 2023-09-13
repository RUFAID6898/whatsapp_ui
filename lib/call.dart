import 'package:flutter/material.dart';
import 'package:flutter_application_wathsapp/cl.dart';
import 'package:flutter_application_wathsapp/sarch.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 24, 24),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 30, 145, 70),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Sarch(),
              ));
        },
        child: Icon(Icons.call),
      ),
      body: ListView(children: [
        ListTile(
          leading: Padding(
            padding: EdgeInsets.only(top: 6),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.green),
              child: Icon(
                Icons.link,
                color: Colors.white,
              ),
            ),
          ),
          title: Text(
            'Create call link',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            'Share a link for your Whathapp call',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Divider(
          thickness: 0,
        ),
        for (int i = 1; i < 10; i++) Cl(displayimage: 'assets/imag/pic$i.jpg')
      ]),
    );
  }
}

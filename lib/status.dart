import 'package:flutter/material.dart';
import 'package:flutter_application_wathsapp/st.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 24, 24),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 30, 145, 70),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView(children: [
        St(displayimage: 'assets/imag/pic1.jpg'),
        const Divider(
          thickness: 0,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            'Recent update',
            style: TextStyle(color: Colors.white),
          ),
        ),
        for (int i = 2; i < 10; i++) St(displayimage: 'assets/imag/pic$i.jpg')
      ]),
    );
  }
}

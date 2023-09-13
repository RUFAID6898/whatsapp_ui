import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaquro = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 24, 24),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 24, 24, 24),
        title: const Text('Profil',
            style: TextStyle(color: Color.fromARGB(255, 255, 254, 254))),
      ),
      body: Stack(children: [
        Positioned(
            right: 110,
            top: 30,
            child: Container(
                width: _mediaquro.width * 0.46,
                height: _mediaquro.height * 0.25,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 4, 101, 101),
                    borderRadius: BorderRadius.circular(100)),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/imag/pic5.jpg'),
                ))),
        Positioned(
            top: 160,
            right: 120,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 21, 212, 181),
                  borderRadius: BorderRadius.circular(100)),
              child: const Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            )),
        Positioned(
            top: 250,
            left: 10,
            child: Container(
                width: 380,
                height: 400,
                child: const Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 237, 239, 239),
                      ),
                      title: Text('RUFAID',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 254, 254))),
                      subtitle: Text(
                          'This is note youre username or pin.This name will be visible',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 254, 254))),
                      trailing: Icon(
                        Icons.edit,
                        color: Color.fromARGB(255, 4, 234, 223),
                        size: 30,
                      ),
                    ),
                    Divider(
                      thickness: 0,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Color.fromARGB(255, 247, 249, 249),
                      ),
                      title: Text('About',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 254, 254))),
                      subtitle: Text('IS ME',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 254, 254))),
                      trailing: Icon(
                        Icons.edit,
                        color: Color.fromARGB(255, 7, 203, 214),
                        size: 30,
                      ),
                    ),
                    Divider(
                      thickness: 0,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.call,
                        color: Color.fromARGB(255, 251, 254, 254),
                      ),
                      title: Text('Phone',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 254, 254))),
                      subtitle: Text('9188506898',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 254, 254))),
                    ),
                  ],
                ))),
      ]),
    );
  }
}

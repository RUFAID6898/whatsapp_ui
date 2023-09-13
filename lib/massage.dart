// import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_application_wathsapp/keybord.dart';
import 'package:flutter_application_wathsapp/mass.dart';

class Massage extends StatelessWidget {
  const Massage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(250, 35, 29, 29),
          title: const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/imag/pic1.jpg'),
              ),
              SizedBox(
                width: 12,
              ),
              Text('Rayyees')
            ],
          ),
          titleSpacing: -8,
          actions: const [
            Icon(Icons.video_call),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.call),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.more_vert)
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/imag/bacground.jpg'),
                  fit: BoxFit.cover)),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Mss(receviemessage: 'hai ', sedmassege: 'enthalla'),
              Mss(receviemessage: 'sugalle', sedmassege: 'pinnalla'),
              Mss(
                  receviemessage: 'ippo ediya kanal illalo',
                  sedmassege: 'njammal ivide thanne ille inte alle kanathr'),
              Mss(receviemessage: 'hai ', sedmassege: 'enthalla'),
              Mss(receviemessage: 'sugalle', sedmassege: 'pinnalla'),
              Mss(
                  receviemessage: 'ippo ediya kanal illalo',
                  sedmassege: 'njammal ivide thanne ille inte alle kanathr'),
              Mss(receviemessage: 'hai ', sedmassege: 'enthalla'),
              Mss(receviemessage: 'sugalle', sedmassege: 'pinnalla'),
              for (int i = 1; i < 12; i++)
                Mss(
                    receviemessage: 'ippo ediya kanal illalo',
                    sedmassege: 'njammal ivide thanne ille inte alle kanathr'),
              Mss(receviemessage: 'hai ', sedmassege: 'enthalla'),
              Mss(receviemessage: 'sugalle', sedmassege: 'pinnalla'),
              Mss(
                  receviemessage: 'ippo ediya kanal illalo',
                  sedmassege: 'njammal ivide thanne ille inte alle kanathr'),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 310,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(children: [
                const Icon(Icons.emoji_emotions),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 200,
                  child: TextFormField(
                      decoration: InputDecoration(hintText: 'Message')),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.attachment_sharp),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.camera_alt)
              ]),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(100)),
              child: Icon(
                Icons.mic,
                color: Colors.white,
              ),
            )
          ],
        ));
  }
}

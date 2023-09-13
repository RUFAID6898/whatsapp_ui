import 'package:flutter/material.dart';
// import 'package:flutter_application_wathsapp/massage.dart';

class Sarch extends StatelessWidget {
  const Sarch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 24, 24, 24),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(250, 35, 29, 29),
          title: const TextField(
            decoration: InputDecoration(
              hintText: 'Selected contact',
              hintStyle: TextStyle(color: Colors.white),
              focusedBorder: InputBorder.none,
            ),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: ListView(
          children: [
            const ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.group,
                  color: Colors.white,
                ),
                backgroundColor: Color.fromARGB(255, 3, 237, 140),
              ),
              title: Text(
                'New gruop',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.contact_emergency,
                  color: Colors.white,
                ),
                backgroundColor: Color.fromARGB(255, 3, 237, 140),
              ),
              title: Text(
                'New contact',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.person_2,
                  color: Colors.white,
                ),
                backgroundColor: Color.fromARGB(255, 3, 237, 140),
              ),
              title: Text(
                'New commutity',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Divider(
              thickness: 0,
            ),
            const Text(
              'Contact on whatsapp',
              style: TextStyle(color: Colors.white),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/imag/pic5.jpg'),
              ),
              title: Text(
                'My(You)',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Message Yourself',
                style: TextStyle(color: Colors.white),
              ),
            ),
            for (int i = 1; i < 10; i++)
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/imag/pic$i.jpg'),
                ),
                title: const Text(
                  'Rufaid',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: const Text(
                  'online',
                  style: TextStyle(color: Colors.white),
                ),
              ),
          ],
        ));
  }
}

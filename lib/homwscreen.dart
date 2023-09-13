import 'package:flutter/material.dart';
import 'package:flutter_application_wathsapp/call.dart';
import 'package:flutter_application_wathsapp/chat.dart';
// import 'package:flutter_application_wathsapp/id.dart';
import 'package:flutter_application_wathsapp/massage.dart';
import 'package:flutter_application_wathsapp/profil.dart';
import 'package:flutter_application_wathsapp/sarch.dart';
import 'package:flutter_application_wathsapp/status.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 10,
            backgroundColor: Color.fromARGB(250, 35, 29, 29),
            title: Text('WhathsApp'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sarch(),
                      ));
                },
                icon: Icon(Icons.search),
              ),
              PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                        child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Profil(),
                                  ));
                            },
                            child: Text(
                              'Profil',
                              style: TextStyle(color: Colors.black),
                            ))),
                    PopupMenuItem(
                      child: Text(
                        'New broadcast',
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Massage(),
                            ));
                      },
                    ),
                    PopupMenuItem(child: Text('Linked device')),
                    PopupMenuItem(child: Text('Settings'))
                  ];
                },
              )
            ],
            bottom: const TabBar(
              indicatorColor: Color.fromARGB(255, 248, 255, 252),
              indicatorWeight: 3,
              labelColor: Colors.blue,
              tabs: [
                Tab(
                  child: Text(
                    'chat',
                    style: TextStyle(color: Color.fromARGB(255, 247, 245, 245)),
                  ),
                ),
                Tab(
                  child: Text('status',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 254, 254))),
                ),
                Tab(
                  child: Text('call',
                      style:
                          TextStyle(color: Color.fromARGB(255, 247, 247, 247))),
                )
              ],
            ),
          ),
          body: const TabBarView(children: [
            Chat(),
            Status(),
            Call(),
          ]),
        ));
  }
}

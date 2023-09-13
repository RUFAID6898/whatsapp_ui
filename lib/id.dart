import 'package:flutter/material.dart';
import 'package:flutter_application_wathsapp/massage.dart';

// ignore: must_be_immutable
class Id extends StatelessWidget {
  //  Id({super.key});
  String displayimage;
  String time;
  String masseage;
  String name;
  String number;
  Id({
    required this.displayimage,
    required this.time,
    required this.masseage,
    required this.number,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Massage(),
            ));
      },
      leading: CircleAvatar(
        backgroundImage: AssetImage(displayimage),
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        number,
        style: TextStyle(color: Colors.white),
      ),
      trailing: Column(
        children: [
          Text(time, style: TextStyle(fontSize: 10, color: Colors.green)),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(masseage,
                    style: TextStyle(fontSize: 10, color: Colors.white))),
          )
        ],
      ),
    );
  }
}

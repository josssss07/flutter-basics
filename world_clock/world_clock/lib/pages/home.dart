// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = (data.isEmpty)
        ? ModalRoute.of(context)!.settings.arguments as Map
        : data;

    Color bgColor =
        (data['isDayTime'] ?? true) ? Colors.blue[200]! : Colors.indigo[700]!;
    String bgImage = (data['isDayTime'] ?? true) ? 'day.png' : 'night.png';
    print(data['isDayTime']);

    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                fit: BoxFit.cover,
              )),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
                child: Column(
                  children: <Widget>[
                    TextButton.icon(
                      onPressed: () async {
                        dynamic result =
                            await Navigator.pushNamed(context, '/location');
                        setState(() {
                          data = {
                            'time': result['time'],
                            'location': result['location'],
                            'isDayTime': result['isDayTime'],
                            'flag': result['flag'],
                          };
                        });
                      },
                      icon: Icon(
                        Icons.edit_location,
                        color: Colors.grey[300],
                      ),
                      label: Text(
                        'Edit Location',
                        style: TextStyle(
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          data['location'],
                          style: TextStyle(
                              fontSize: 28,
                              letterSpacing: 2,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      data['time'],
                      style: TextStyle(fontSize: 66, color: Colors.white),
                    )
                  ],
                ),
              )),
        ));
  }
}


/*

ok so, there is like a ton of depriciated code in the tutorial, so just use this 
as a ref atp because god dammit it makes no sense
*
*/
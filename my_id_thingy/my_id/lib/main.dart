// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: JoshID(),
  ));
}

class JoshID extends StatelessWidget {
  const JoshID({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Id card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 00),
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: null,
                radius: 40,
                child: Text('lmao'),
              ),
              Divider(
                height: 60,
                color: Colors.grey[800],
              ),
              Text(
                'NAME',
                style: TextStyle(
                  color: Color.fromARGB(47, 255, 255, 255),
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Joshua Desai',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 27.6,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Class',
                style: TextStyle(
                  color: const Color.fromARGB(161, 255, 255, 255),
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'SY Bsc IT',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 27.6,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'joshuadesai03@gmail.com',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      color: Colors.blueAccent,
                    ),
                  )
                ],
              ),
            ]),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

//to make a stateless widget
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "test",
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(247, 220, 40, 13),
        centerTitle: true,
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text('one'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.red,
              child: Text('two'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: const Color.fromARGB(255, 54, 82, 244),
              child: Text('three'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(247, 220, 40, 13),
        child: const Text("click"),
      ),
    );
  }
}

//stateless widgets cannot change overtime
//stateful widgets can change their state over time
/*
margin: EdgeInsets.all(4),
        color: Color.fromARGB(200, 124, 124, 124),
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Text('hello'),
        
Padding(
        padding: EdgeInsets.all(50),
        child: Text("Hello"),
      ),        
        */

//to change a button style and the new types of buttons in flutter 3.0:
//follow this link:
//https://stackoverflow.com/questions/66835173/how-can-i-change-the-background-color-of-elevated-button-in-flutter-from-functio
//also for just info on buttons in general:
//https://stackoverflow.com/questions/73583436/after-upgrade-flutter-3-3-0-raisedbutton-showing-error-the-method-flatbutton

/*
Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text("hello world"),
          ElevatedButton(
            onPressed: () {},
            child: Text("click me"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 10))),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(20),
            child: Text('inside container'),
          )
        ],
      ),
*/

//how to constantly hot reload :
//https://stackoverflow.com/questions/54284047/vscode-hot-reload-for-flutter-does-not-work

/*
appBar: AppBar(
        title: const Text(
          "test",
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(247, 220, 40, 13),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          // ignore: prefer_const_literals_to_create_immutables
          Row(children: <Widget>[
            Text('hello'),
            Text('World'),
          ]),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text("one"),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.pink,
            child: Text("two"),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.green,
            child: Text("three"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(247, 220, 40, 13),
        child: const Text("click"),
      ),
    );
*/


/*
Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(20),
                color: Colors.cyan,
                child: Text('test case 1'),
              ),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(20),
                color: Colors.cyan,
                child: Text('test case 2'),
              ),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(20),
                color: Colors.cyan,
                child: Text('test case 3'),
              ),
            ],
          ),
        ],
      ),

  */

  //use grid wrap to make a proper grid on your screen 

  /*
  body: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(20),
            color: Colors.cyan,
            child: Text('test case 1'),
          ),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(20),
            color: Colors.cyan,
            child: Text('test case 2'),
          ),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(20),
            color: Colors.cyan,
            child: Text('test case 3'),
          ),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(20),
            color: Colors.cyan,
            child: Text('test case 4'),
          ),
        ],
      ),
  */
  //grid layout:
  //https://stackoverflow.com/questions/63060644/making-a-2x2-grid-in-flutter

//expanded widget is like flex box in css(web)




/*
Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text('one'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.red,
              child: Text('two'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: const Color.fromARGB(255, 54, 82, 244),
              child: Text('three'),
            ),
          )
        ];

*/
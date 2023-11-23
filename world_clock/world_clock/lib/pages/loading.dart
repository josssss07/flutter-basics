// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:world_clock/services/worldtime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(location: 'India', flag: 'india.png', url: 'Asia/Kolkata');
    await instance.getTime();
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isdaytime,
    });
    print(instance.isdaytime);
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SpinKitPulsingGrid(
        color: Colors.black,
        size: 50.0,
      ),
    ));
  }
}


// to fix the get error: 
//Response response = await http.get(URI.parse("endpoints")); 

/*

//await Response ('https://jsonplaceholder.typicode.com/todos/1' as Uri);

    Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

    //print('Response body: ${response.body}');

    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);

*/
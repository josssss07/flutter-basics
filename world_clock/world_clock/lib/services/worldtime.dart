// ignore_for_file: avoid_print

import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location;
  String time = '';
  String flag = '';
  String url = '';
  late bool isdaytime;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));

      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset1 = data['utc_offset'].substring(0, 3);
      String offset2 = data['utc_offset'].substring(4, 6);

      DateTime now = DateTime.parse(datetime);
      now = now.add(
          Duration(hours: int.parse(offset1), minutes: int.parse(offset2)));
      print(now);
      //toset time property
      print(url);
      print(now);
      time = now.toString();
      time = DateFormat.jm().format(now);

      //isdaytime
      isdaytime = now.hour > 6 && now.hour < 17;
    } catch (e) {
      print(e);
      time = 'could not get time data :(';
    }
  }
}

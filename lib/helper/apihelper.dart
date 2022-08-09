import 'dart:async';
import 'dart:convert' as convert;
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task/ui/information/view/downloader.dart';
import 'package:task/helper/model.dart';
import 'package:task/ui/homepage/view/homepagescreen.dart';

Future getdata(BuildContext context) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/person/popular?api_key=78a8056c8ce890c77d366c7d4ee2f083'));

  if (response.statusCode == 200) {
    myresponse = convert.jsonDecode(response.body);
    // log(myresponse["results"][19]["id"].toString());
    // print(myresponse["results"].length);
    for (int a = 0; a < 20; a++) {
      id[a] = myresponse["results"][a]["id"];

      getinfo(id[a], context, a);
    }

  } else {
    print('response failed ${response.statusCode}.');
  }
}

Future getinfo(int id, BuildContext context, int i) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/person/$id?api_key=78a8056c8ce890c77d366c7d4ee2f083&language=en-US'));

  if (response.statusCode == 200) {
    inforesponse = convert.jsonDecode(response.body);

    // print(inforesponse["also_known_as"]);

    image[i] = inforesponse["profile_path"];
    name[i] = inforesponse["also_known_as"];
    place[i] = inforesponse["imdb_id"];
    bio[i] = inforesponse["biography"];
    kfor[i] = inforesponse["known_for_department"];
    bday[i] = inforesponse["birthday"];

    print(inforesponse["birthday"]);
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => homepagescreen())));
  } else {
    print('response failed ${response.statusCode}.');
  }
}

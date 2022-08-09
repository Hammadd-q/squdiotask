import 'package:flutter/material.dart';
import 'package:task/helper/apihelper.dart';
import 'package:task/ui/homepage/view/homepagescreen.dart';
import 'package:task/ui/splash/view/splashscreen.dart';

void main() {
  // getdata();
     ErrorWidget.builder = (FlutterErrorDetails details) => Container();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const splashscreen(),
    );
  }
}


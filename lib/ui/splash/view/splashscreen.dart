import 'dart:async';
import 'package:flutter/material.dart';
import 'package:task/helper/apihelper.dart';
import 'package:task/ui/homepage/view/homepagescreen.dart';
import 'package:task/ui/splash/view/splashview.dart';
import 'package:task/utils/colors.dart';
import 'dart:async';
import 'dart:convert' as convert;
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task/helper/model.dart';
import 'package:task/ui/homepage/view/homepagescreen.dart';





class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {




  @override
  void initState() {
    super.initState();
    getdata(context);
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
backgroundColor: purplecolor,
body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
  splashview()
],),

    );
  }
}
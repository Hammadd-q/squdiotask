import 'package:flutter/material.dart';
import 'package:task/ui/homepage/view/homepageview.dart';

class homepagescreen extends StatelessWidget {
  const homepagescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: SingleChildScrollView(
  child: Column(children: [
    homepageview(



    )
  ],),
),

    );
  }
}
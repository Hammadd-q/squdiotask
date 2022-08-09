import 'package:flutter/material.dart';
import 'package:task/global/widgets/gap.dart';
import 'package:task/global/widgets/text.dart';
import 'package:task/utils/colors.dart';


class splashview extends StatelessWidget {
  const splashview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Column(

children: [
Center(child: Image.asset("assets/images/logo.png")),
mytext("Squadio Technologies", 20, whitecolor, FontWeight.bold),
mysizebox(10),
mytext("Task Submitted by", 18, whitecolor, FontWeight.normal),
mysizebox(10),
mytext("Muhammad Hammad Qasir", 20, whitecolor, FontWeight.bold),


],

   );

  }
}
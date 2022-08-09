import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class mysizebox extends StatelessWidget {
final double hei;
  const mysizebox(this.hei);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hei,
    );
  }
}
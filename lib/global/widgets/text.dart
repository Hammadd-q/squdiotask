import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class mytext extends StatelessWidget {

final String text;
final double size;
final FontWeight weight;
final Color col;

  const mytext(this.text,this.size,this.col,this.weight);

  @override
  Widget build(BuildContext context) {
    return Text(
text,
style: TextStyle(fontSize: size,fontWeight: weight,color: col),

    );
  }
}
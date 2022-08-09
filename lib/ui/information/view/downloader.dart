import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task/global/widgets/gap.dart';
import 'package:task/global/widgets/text.dart';
import 'package:task/helper/model.dart';
import 'package:task/utils/colors.dart';

class downloadpage extends StatefulWidget {
  @override
  _downloadpageState createState() => _downloadpageState();
}

class _downloadpageState extends State<downloadpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            child: Center(
                child: Image.network(
              "https://image.tmdb.org/t/p/w500/${image[index]}",
              height: 450,
              width: 450,
            )),
          ),
          mysizebox(20),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: GestureDetector(
              onTap: () {
                _saveImage();
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green[400]),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: mytext("Download", 15, whitecolor, FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _saveImage() async {
    String path = 'https://image.tmdb.org/t/p/w500/${image[index]}';
    GallerySaver.saveImage(path).then((success) {
      setState(() {
        print('Image is saved');
      });
    });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Row(
                  children: [Spacer(),
                    Text("Image Saved"),
                    Spacer()
                  ],
                ),
                duration: Duration(seconds: 3),
              ));
  }
}

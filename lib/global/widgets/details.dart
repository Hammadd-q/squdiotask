import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/global/widgets/dialogue.dart';
import 'package:task/global/widgets/gap.dart';
import 'package:task/global/widgets/text.dart';
import 'package:task/ui/information/view/downloader.dart';
import 'package:task/helper/model.dart';
import 'package:task/utils/colors.dart';


pindialogue(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomDialog(

        
            Column(
              children: [
                 GestureDetector(
                   onTap: () {
                                 Navigator.push(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                         downloadpage()
                                                         ));
                   },
                   child: Image.network("https://image.tmdb.org/t/p/w500/${image[index]}",height: 150,width: 150,)),
             
               
       Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mysizebox(10),
            mytext(
              (name[index].length>0)?
              name[index][0].toString():"N/A"
            , 15, blackcolor, FontWeight.bold),
             mysizebox(5),
             Divider(),
            mytext(
              (bday[index].length>0)?
              "Date of birth: "+bday[index].toString():"Date of birth: N/A"
            , 13, blackcolor, FontWeight.normal),
            mysizebox(5),
            Divider(),
            mytext(
              (place[index].length>0)?
              "IMBD Id: "+place[index].toString():"IMBD Id: N/A"
            , 13, blackcolor, FontWeight.normal),
                mysizebox(5),
                Divider(),
            mytext(
              (kfor[index].length>0)?
              "Profession: "+kfor[index].toString():"Profession: N/A"
            , 12, blackcolor, FontWeight.normal),
                mysizebox(5),
                Divider(),
            mytext(
              (bio[index].length>0)?
              "Bio: "+bio[index].toString():"Bio: N/A"
            , 12, blackcolor, FontWeight.normal),
          
          ],),
     
             
              ],
            ),
         
            );
      });
}

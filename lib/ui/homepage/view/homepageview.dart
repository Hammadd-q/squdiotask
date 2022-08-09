import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/global/widgets/details.dart';
import 'package:task/global/widgets/gap.dart';
import 'package:task/global/widgets/text.dart';
import 'package:task/helper/apihelper.dart';
import 'package:task/ui/information/view/downloader.dart';
import 'package:task/helper/model.dart';
import 'package:task/utils/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

class homepageview extends StatefulWidget {
  const homepageview({Key? key}) : super(key: key);

  @override
  State<homepageview> createState() => _homepageviewState();
}

class _homepageviewState extends State<homepageview> {
  @override
  void initState() {
    setState(() {

    });

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
mysizebox(20),
Row(
  children: [
        Image.asset("assets/images/logo.png",height: 80,),
        Spacer(),
        mytext("Task's Homepage", 20, blackcolor, FontWeight.bold),
        Spacer(),
  ],
),
mysizebox(20),
mytext("List of popular people", 25, blackcolor, FontWeight.bold),
mysizebox(50),

Container(
  height: 300,
  child:   CarouselSlider.builder(
    itemCount: myresponse["results"].length,
  
    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            
            print(itemIndex);
            setState(() {
              index = itemIndex;
            });
            pindialogue(context);

          
          },
          child: Container(
            child: Container(
    decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green[100]
    ),
    child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
          
      
       
       Image.network("https://image.tmdb.org/t/p/w500/${image[itemIndex]}",height: 150,width: 150,),
          
          
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mysizebox(50),
              mytext(
                (name[itemIndex].length>0)?
                name[itemIndex][0].toString():"N/A"
              , 15, blackcolor, FontWeight.bold),
              mysizebox(5),
              mytext(
                (place[itemIndex].length>0)?
                "IMBD Id: "+place[itemIndex].toString():"IMBD Id: N/A"
              , 13, blackcolor, FontWeight.normal),
              
            
            ],),
          )
          
          ],),
    ),
    
    ),
  
          ),
        ),
      ), options: CarouselOptions(
            disableCenter: true,
                      enlargeCenterPage: true,
          viewportFraction: 0.8,
          // aspectRatio: 2.0,
          // initialPage: 2,
          // onScrolled: (value) {
          //   print(value);
          // },
          // onPageChanged: (index, reason) {
          //   print(reason);
          // },
            scrollDirection: Axis.horizontal,
          ),
  ),
),


      ]
      
      ,),
    );
  }
}
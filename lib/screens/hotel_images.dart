import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ticket/utils/app_layout.dart';
import 'package:flutter_ticket/utils/app_styles.dart';

class HotelImages extends StatefulWidget {
  const HotelImages({super.key});

  @override
  State<HotelImages> createState() => _HotelImagesState();
}

class _HotelImagesState extends State<HotelImages> {
  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      width: size.width*0.6,
      height: size.height*0.4,
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.blueAccent,
            blurRadius: 2,
            spreadRadius: 1
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height:size.height*0.22,
            width: size.width*0.58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Styles.primaryColor,
              image: const DecorationImage(
                image: AssetImage("images/wheel.jpg",),fit:BoxFit.cover )
            ),
          ),
          SizedBox(height: 10,),
          Text("Open space", style:Styles.headStyle2.copyWith(color: Colors.white ) ,),
           SizedBox(height: 10,),
          Text("London", style:Styles.headStyle3.copyWith(color: Colors.white ) ,),
           SizedBox(height: 10,),
           Text("\$40/night", style:Styles.headStyle.copyWith(color: Colors.white ) ,),

        ],
      ),
        
    );
  }
}

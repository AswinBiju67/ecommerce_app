import 'package:ecommerce_app/utlit/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomIconCard extends StatefulWidget {
  final Color? color1;
  final Color? color2;
  final String? text;
  final IconData? icon;

  const CustomIconCard({super.key,
  this.color1,
  this.color2,
  this.icon,
  this.text});

  @override
  State<CustomIconCard> createState() => _CustomIconCardState();
}

class _CustomIconCardState extends State<CustomIconCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(width: 126,),
     Positioned(
      top: 2,
      bottom: 2,
      left: 8,
       child: Container(
        width: 136,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
            widget.color1!,
            widget.color2!             
            ])
        ),
        child: Center(child: Text(widget.text!,style: GoogleFonts.montserrat(color: Colors.white),)),
       ),
     ),
     Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
            Color(0xff3F92FF),
            Color(0xff0B3689),              
            ]),
      ),
      child: Icon(widget.icon,color: colorconst.WHITE,),
     )
    ],);
  }
}
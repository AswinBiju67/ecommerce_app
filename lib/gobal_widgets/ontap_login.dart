import 'package:ecommerce_app/utlit/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnTapLogin extends StatelessWidget {
  String? textin;
  OnTapLogin({
    super.key,
    this.textin, this.OnButtonPress,
   
  });
   final void Function()? OnButtonPress;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: OnButtonPress,
        child: Padding(
          padding: const EdgeInsets.only(left: 29,right: 29),
          child: Container(decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colorconst.PRIMARY
          ),
          height: 55,
          width: 350,
          child: Center(child: Text(textin!,style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.w600,color: colorconst.WHITE),)),),
        ),
      ),
    );
  }
}

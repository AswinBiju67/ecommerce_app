
import 'package:ecommerce_app/utlit/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputField extends StatelessWidget {
   String? hinttext;
   IconData? prefixIcon;
   IconData? suffixIcon;
   CustomInputField({
    super.key,
    this.hinttext,
    this.prefixIcon,
    this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 32,right: 26),
        child: TextField(decoration: InputDecoration(border: 
        OutlineInputBorder(borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: colorconst.GREYSH4)),
        hintText: hinttext,
        hintStyle: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w600,color: colorconst.GREYSH5),
        prefixIcon: Icon(prefixIcon,color: colorconst.GREYSH5,),
        suffixIcon: Icon(suffixIcon),
        filled: true,
        fillColor: colorconst.WHITE2
        ),
        ),
      ),
    );
  }
}
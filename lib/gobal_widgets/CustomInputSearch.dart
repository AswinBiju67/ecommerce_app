import 'package:ecommerce_app/utlit/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputSearch extends StatelessWidget {
  const CustomInputSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          offset: Offset(0, 2),blurRadius: 9,color: colorconst.BLACK.withOpacity(.1)
        )]
      ),
      child: TextField(decoration: InputDecoration(
        filled: true,
        fillColor: colorconst.WHITE,
        border: OutlineInputBorder(borderSide: BorderSide.none),
        prefixIcon: Icon(Icons.search,color: colorconst.GREY7,),
        suffixIcon: Icon(Icons.mic_none,color: colorconst.GREY7,),
        hintText: "Search any Product..",hintStyle: GoogleFonts.montserrat(fontSize: 14,color: colorconst.GREY7)
      ),),
    );
  }
}
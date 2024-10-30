import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:ecommerce_app/utlit/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardList extends StatelessWidget {
  const CardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: List.generate(
          2,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                    height: 124,
                    width: 170,
                    fit: BoxFit.fill,
                    imagesConst.FOURTHSECTIO[index]),
                    SizedBox(height: 4,),
                Text(
                  "Women Printed Kurta",
                  style: GoogleFonts.montserrat(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 4,),
                Text(
                  "Neque porro quisquam est \nqui ndolorem ipsum quia",
                  style: GoogleFonts.montserrat(fontSize: 10),
                ),
                SizedBox(height: 4,),
                Text(
                  "₹1500",
                  style: GoogleFonts.montserrat(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text(
                      "₹2499",
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(width: 4,),
                    Text(
                      "40%Off",
                      style: GoogleFonts.montserrat(
                          fontSize: 10, color: colorconst.PRIMARY2),
                    )
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    RatingBar.readOnly(
                      filledIcon: Icons.star,
                      emptyIcon: Icons.star_border,
                      initialRating: 4,
                      maxRating: 5,
                      size: 15,
                    ),
                    SizedBox(width: 4,),
                    Text(
                      "56890",
                      style: GoogleFonts.montserrat(
                          fontSize: 10, color: colorconst.GREY8),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

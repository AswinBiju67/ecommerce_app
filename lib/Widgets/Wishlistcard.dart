import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:ecommerce_app/productdetail_screen/productdetail_screen.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Wishlistcard extends StatelessWidget {
  final String? image;
  final String? titel;
  final String? desc;
  final String? price;
  final String? rating;
  const Wishlistcard({
    this.image,
    this.titel,
    this.desc,
    this.price,
    this.rating,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProductdetailScreen(),));
            },
            child: Image.asset(
                fit: BoxFit.cover,
                image!),
          ),
              SizedBox(height: 4),
          Text(
            titel!,
            style: GoogleFonts.montserrat(
                fontSize: 12, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 4,),
          Text(
            desc!,
            style: GoogleFonts.montserrat(fontSize: 10),
          ),
          SizedBox(height: 4,),
          Text(
            price!,
            style: GoogleFonts.montserrat(
                fontSize: 12, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 4,),
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
                rating!,
                style: GoogleFonts.montserrat(
                    fontSize: 10, color: colorconst.GREY8),
              ),
            ],
          )
        ],
      ),
    );
  }
}

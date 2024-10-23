import 'package:ecommerce_app/utlit/color.dart';
import 'package:flutter/material.dart';

class LoginMethod extends StatelessWidget {
  String? imagelogo;
   LoginMethod({
    super.key,
    this.imagelogo,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: CircleAvatar(radius: 30,backgroundColor: colorconst.PRIMARY,
    child: CircleAvatar(radius: 28,backgroundColor: colorconst.CIRCLEINSIDE,
    child: CircleAvatar(radius: 19,backgroundColor: colorconst.CIRCLEINSIDE,
    backgroundImage: AssetImage(imagelogo!),),),));
  }
}


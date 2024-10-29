import 'package:ecommerce_app/splash_screen/splash_screen.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: colorconst.SCAFFCOLOR,
      appBarTheme: AppBarTheme(backgroundColor: colorconst.SCAFFCOLOR)),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
);
}
}
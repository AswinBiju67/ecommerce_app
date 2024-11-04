import 'package:ecommerce_app/home_screen/home_screen.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:flutter/material.dart';

class Bottomnavibar extends StatefulWidget {
  const Bottomnavibar({super.key});

  @override
  State<Bottomnavibar> createState() => _BottomnavibarState();
}

class _BottomnavibarState extends State<Bottomnavibar> {
  int selectedindex=0;
    static const List screen=[
    HomeScreen(),
    Text("Downloads",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white)),
    Text("Downloads",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white)),
    Text("More",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white)),

   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorconst.WHITE,
        child: Icon(Icons.shopping_cart),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {
        
      },),
      
      body:  Center(child: screen[selectedindex],),
     bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedindex,
      onTap: (value) {
        print(value);
        HomeScreen();
        selectedindex=value;
        setState(() {

        });
      },
       type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_outlined),label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
        ]
      )

      
    );
  }
}
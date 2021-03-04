import 'package:flutter/material.dart';

import '../../../constants.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container
      (
      //margin: EdgeInsets.all(20),
      padding:EdgeInsets.all(10) ,
      decoration: BoxDecoration(
          color:kPrimaryLightColor,
          borderRadius: BorderRadius.circular(25)
      ),
      child: BottomNavigationBar(
        currentIndex: 4,
        backgroundColor: kPrimaryLightColor,
        fixedColor: kPrimaryColor,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: (_){},
        items: [
          buildBottomNavigationBarItem(Icons.sentiment_satisfied,'العروض'),
          buildBottomNavigationBarItem(Icons.filter_none,'الاقسام'),
          buildBottomNavigationBarItem(Icons.add_shopping_cart,'السله'),
          buildBottomNavigationBarItem(Icons.dvr,'طلباتي'),
          buildBottomNavigationBarItem(Icons.home,'الرئيسيه'),

        ],
      ),
    );
  }
  BottomNavigationBarItem buildBottomNavigationBarItem(IconData icon,String   title) {

    return BottomNavigationBarItem(
        icon: Icon(icon),
        title: Text(title));
  }
}

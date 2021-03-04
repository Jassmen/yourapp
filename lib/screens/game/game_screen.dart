import 'package:flutter/material.dart';
import 'package:your_app_task/constants.dart';
import 'package:your_app_task/model/game.dart';
import 'package:your_app_task/screens/home_screen/components/bottom_nav_bar.dart';
import 'package:your_app_task/screens/home_screen/components/title_text.dart';

class GameScreen extends StatelessWidget {
  static String routeName='/game';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kSecondaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30,),
              TitleText(title: 'جمبع الاقسام',),
              ListView.builder(
                physics:NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  padding: EdgeInsets.all(10),
                  itemCount: game.length,
                  itemBuilder:(context,index){
                  return game[index];
      }
      ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
        
      ),
    );
  }
}

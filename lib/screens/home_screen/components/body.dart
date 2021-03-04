
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:your_app_task/constants.dart';
import 'package:your_app_task/screens/game/game_screen.dart';
import 'package:your_app_task/screens/home_screen/components/search_field.dart';
import 'package:your_app_task/screens/home_screen/components/title_text.dart';
import 'package:your_app_task/screens/home_screen/components/view_pager.dart';
import 'package:your_app_task/screens/home_screen/components/what_do_you_want.dart';

import '../../../size_config.dart';

import 'bottom_nav_bar.dart';
import 'bottom_widget.dart';
import 'game_stores.dart';
import 'home_header.dart';
import 'horizontal_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double defaultSize = SizeConfig.defaultSize;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              HomeHeader(),
              SizedBox(
                height: 10,
              ),
              SearchField(),
              SizedBox(
                height: 10,
              ),
              WhatDoYouWant(name: 'أحمد'),
              SizedBox(
                height: 10,
              ),
              ViewPager(),
              SizedBox(
                height: 10,
              ),
              TitleText(title: '',),
              HorizontalList(),
              SizedBox(
                height: 10,
              ),
              BottomWidget(),
              SizedBox(height: 30,),
              TitleText(title:'جميع الأقسام'),
              buildContainer(context),
              SizedBox(height: 10,),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar()
      ),
    );

  }

  Container buildContainer(BuildContext context) {
    return Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(25)
              ),
              child: ListTile
                (
                  onTap: (){
                    Navigator.pushNamed(context, GameScreen.routeName);
                  },
                  leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
                  title: Text('متاجر الالعاب',textAlign: TextAlign.end,),
                  subtitle:  Text('نوصلك كل انواع الهدايا',textAlign: TextAlign.end),
                  trailing: Container(
                    width: 50,
                    height: 50,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color:kSecondaryColor,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: SvgPicture.asset('assets/icons/game.svg'),)

              ),
            );
  }



}






import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:your_app_task/screens/cart/cart_screen.dart';
import 'package:your_app_task/screens/game/game_screen.dart';





import 'screens/home_screen/home_screen.dart';



final Map<String , WidgetBuilder> routes={
  HomeScreen.routeName: (context)=> HomeScreen(),
  CartScreen.routeName:(context) => CartScreen(),
  GameScreen.routeName:(context) => GameScreen(),


};
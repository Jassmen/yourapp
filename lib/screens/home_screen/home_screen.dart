


import 'package:flutter/material.dart';
import 'package:your_app_task/constants.dart';

import './components/body.dart';
import './components/drawer.dart';


class HomeScreen extends StatelessWidget {
  static String routeName ='/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFF5F5F6),
      body:Body(),
      endDrawer:drawer() ,
    );
  }
}

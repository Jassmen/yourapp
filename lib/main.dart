import 'package:flutter/material.dart';

import 'routes.dart';
import 'screens/home_screen/home_screen.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This widget is the root of your application.
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:ThemeData(backgroundColor: Colors.grey.withOpacity(.5),iconTheme: IconThemeData(color: Colors.black)),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }

}

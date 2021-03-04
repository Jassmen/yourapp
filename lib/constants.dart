import 'package:flutter/material.dart';



const kPrimaryColor = Color(0xFF31549F);
const kPrimaryLightColor =  Color(0xFFFFFFFF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF273279), Color(0xFF224DDD)],
);
const kSecondaryColor = Color(0xFFF8F8F8);
const kTextColor = Color(0xFF9796A1);

const kAnimationDuration=Duration(microseconds: 200);

final headingStyle= TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: 28,
    height: 1.5
);
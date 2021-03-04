
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ViewPager extends StatelessWidget
{
  const ViewPager({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Carousel(
        borderRadius: true,
        autoplay: true,
        overlayShadow: false,
        boxFit: BoxFit.cover,
        //dotBgColor: kPrimaryColor,
        dotSize:5.0,
        indicatorBgPadding:9.0,
        animationCurve:Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1500),
        images: [
        AssetImage('assets/images/img1.png'),
        AssetImage('assets/images/img2.png'),
        AssetImage('assets/images/img3.png'),
        AssetImage('assets/images/img6.png')
        ],

      ),

    );
  }
}
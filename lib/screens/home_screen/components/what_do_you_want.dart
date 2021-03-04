import 'package:flutter/material.dart';

import '../../../constants.dart';

class WhatDoYouWant extends StatelessWidget {
  const WhatDoYouWant({
    Key key,
    @required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      //height: 50,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(name !=null ?
            ' $name ؟' : ' أحمد ؟',
            style: TextStyle(
                color: Color(0xFF273279),
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal),
          ),
          Text(
            ' ماذا تريد ان تطلب يا',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal),
          ),

        ],
      ),
    );
  }
}
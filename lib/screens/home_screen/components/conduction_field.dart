import 'package:flutter/material.dart';

import '../../../constants.dart';

class ConductionField extends StatelessWidget {
  const ConductionField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      margin: EdgeInsets.only(left: 5,),
      //height: 70,
      //width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        color: kTextColor.withOpacity(.1),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: <Widget>[
                Icon(Icons.arrow_back_ios),
                SizedBox(width: 5,),
                Text('الشرقيه',style: TextStyle(color: kTextColor,fontWeight: FontWeight.bold,height: 1,fontSize: 15),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'التوصيل',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
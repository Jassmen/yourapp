import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../../constants.dart';


class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin:EdgeInsets.symmetric(horizontal:10) ,
      decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.arrow_back_ios,color: kTextColor,),
          Text('نوع المطبخ'),
          SvgPicture.asset('assets/icons/Mail.svg',),
          Container(
            color: kPrimaryLightColor,
            height: 50,
            width: MediaQuery.of(context).size.width/2,
            child: TextField(
              // onChanged: (value) => print(value),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 9),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: "ابحث من هنا",
                  suffixIcon: Icon(Icons.search)),
            ),
          )
        ],
      ),
    );
  }
}
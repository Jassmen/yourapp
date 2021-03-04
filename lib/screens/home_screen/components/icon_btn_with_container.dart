import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



import '../../../size_config.dart';


class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter(
      {Key key, this.svgSrc, this.numOfItems = 0, this.press})
      : super(key: key);

  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(30),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              color: Colors.white,
              //shape: BoxShape.circle
              borderRadius: BorderRadius.circular(12),
            ),
            child: svgSrc != null ?
            SvgPicture.asset(svgSrc) :
             IconButton(icon:Icon(Icons.menu),
               onPressed:()=>{

               },
             ),

          ),
          if (numOfItems != 0)
            Positioned(
              // 3m;t el positioned 3lshn ageeb elno2ta el7mra n7yt el ymeen
              top: -3,
              left: 0,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF2019C0),
                    border: Border.all(width: 1.5, color: Colors.white)),
                child: Center(
                  child: Text(
                    "$numOfItems",
                    style: TextStyle(
                        fontSize: 10,
                        height: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}

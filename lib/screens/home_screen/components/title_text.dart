import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key key, this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('عرض الكل ', style: TextStyle(
        fontSize: 15,)),
          Text(title != null ?'روابط سريعة':title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal))
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../constants.dart';




List<Category> categories = [
  Category(
    image: 'assets/images/icon1.png',
    imageCaption: 'جميع الفئات',
  ),
  Category(
    image: 'assets/images/icon2.png',
    imageCaption: 'كوبونات خصم',
  ),
  Category(
    image: 'assets/images/icon3.png',
    imageCaption: 'جميع الفئات',
  ),
  Category(
    image: 'assets/images/icon4.png',
    imageCaption: 'جميع الفئات',
  ),
  Category(
    image: 'assets/images/icon5.png',
    imageCaption: 'جميع الفئات',
  ),
  Category(
    image: 'assets/images/icon6.png',
    imageCaption: 'جميع الفئات',
  ),
  Category(
    image: 'assets/images/icon7.png',
    imageCaption: 'جميع الفئات',
  ),
  Category(
    image: 'assets/images/icon8.png',
    imageCaption: 'جميع الفئات',
  ),
];

class Category extends StatelessWidget {
  final String image;
  final String imageCaption;

  const Category({Key key, this.image, this.imageCaption}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 50,
          height: 100,
          padding: EdgeInsets.only(top: 10, bottom: 15),
          decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            title: Image.asset(
              image,
              height: 30,
            ),
            subtitle: Container(
              alignment: Alignment.center,
              child: Text(
                imageCaption,
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

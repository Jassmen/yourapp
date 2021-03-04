import 'package:flutter/material.dart';
import 'package:your_app_task/model/cart.dart';
import 'package:your_app_task/screens/cart/components/body.dart';
import 'package:your_app_task/screens/home_screen/components/bottom_widget.dart';

import '../../constants.dart';

class CartScreen extends StatelessWidget {
  static String routeName ='/screens/cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFF5F5F6),
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar:Container(
        height: 100,
        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        padding: EdgeInsets.only(bottom: 15,right: 15,left: 15),
        decoration: BoxDecoration(
          color: Color(0xFF2A699C).withOpacity(.1),
          borderRadius: BorderRadius.circular(20),
        ),
          child: Align(
            alignment:Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFF2A699C),
                borderRadius: BorderRadius.circular(10),),
              child: FlatButton(
                onPressed: (){},
                child: Text('أطلب اللي بالك',style: TextStyle(color: Colors.white,fontSize: 30,height: 1),),
              ),
            ),
          ),
      )
      /* Container(
        margin:EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFF2A699C),
          borderRadius: BorderRadius.circular(10),),
        child: FlatButton(
          onPressed: (){},
          child: Text('أطلب اللي بالك',style: TextStyle(color: Colors.white,fontSize: 30,height: 1),),
        ),
      )*/

    );
  }
}
AppBar buildAppBar(BuildContext context) {
  return AppBar(
    iconTheme: IconThemeData(color:Colors.black),
    backgroundColor: kPrimaryLightColor,
      centerTitle: true,
      title: Column(
        children: [
          SizedBox(height: 10,),
          Text("Your Cart",style:TextStyle(color:Colors.black),),
          Text("${demoCarts.length} items",style: TextStyle(color:Color(0xFF273279)))
        ],
      ),

  );
}

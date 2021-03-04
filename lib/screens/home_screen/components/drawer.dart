import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'package:flutter/material.dart';

Drawer drawer() {
  return Drawer(
    child: SafeArea(
      child: Container(
        width: 100,
        //height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(height: 50,),
           /* UserAccountsDrawerHeader(
                arrowColor: Color(0xFF273279),
                decoration: BoxDecoration(color: kTextColor),
                accountName: Text(" Ahmed Mohamed",
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Color(0xFF273279), fontSize: 20),
                ),
                accountEmail: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('اعدادات', style: TextStyle(color: Color(0xFF273279)),),
                    Text(
                      'عرض الصفحة الشخصيه',
                      style: TextStyle(color: Color(0xFF273279)),
                    ),
                  ],
                ),
                currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 60.0,
                  ),
                ))),*/
                 menuIcon("الصفحه الرئيية",Icons.store),
                 menuIcon("حسابي",Icons.account_box),
                 menuIcon("طلباتي", Icons.card_giftcard),
                menuIcon("عربتي", Icons.shopping_basket),
                 menuIcon( "المفضلة",Icons.favorite,),
                menuIcon( "الأعدادات",Icons.settings),
                 menuIcon("المساعده",Icons.help,),
            menuIcon("المساعده",Icons.help,),
            menuIcon("المساعده",Icons.help,),

            SizedBox(height: 30,),
            Align(
              alignment:Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF2A699C),
                  borderRadius: BorderRadius.circular(10),),
                child: FlatButton(
                  onPressed: (){},
                  child: Text('أطلب اللي بالك',style: TextStyle(color: Colors.white,fontSize: 30,height: 1),),
                ),
              ),
            )

          ],
        ),
      ),
    ),
  );
}

InkWell menuIcon(String title, IconData icon) {
  return InkWell(
          child: ListTile(
            onTap: () {},
            title: Text(title,
              textAlign: TextAlign.end,
            ),
            trailing: IconButton(
              onPressed: (){},
              icon: Icon(icon,color: Color(0xFF2A699C),),
              highlightColor: kPrimaryColor,
            )
            //Icon(Icons.store),
          ),
        );
}

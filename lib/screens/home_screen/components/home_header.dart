import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_app_task/screens/cart/cart_screen.dart';



import 'conduction_field.dart';
import 'drawer.dart';
import 'icon_btn_with_container.dart';


class HomeHeader extends StatefulWidget {
  @override
  _HomeHeaderState createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.symmetric(horizontal: (20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            numOfItems: 5,
          ),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            press:()=> Navigator.pushNamed(context, CartScreen.routeName),
          ),
          ConductionField(),
         // IconBtnWithCounter( ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              setState(() {
                drawer();
              });
            }
          )

        ],
      ),

    );
  }
}


/*class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Padding(
          padding: EdgeInsets.symmetric(horizontal: (20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconBtnWithCounter(
                svgSrc: 'assets/icons/Bell.svg',
                numOfItems: 5,
              ),
              IconBtnWithCounter(
                svgSrc: 'assets/icons/Cart Icon.svg',
              ),
              ConductionField(),
              IconBtnWithCounter( press: ()=>{

              },),

            ],
          ),

    );


     *//* endDrawer:Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              accountName: Text("Yasmin AbdElaziz",style: TextStyle(color: Colors.yellow,fontSize: 22.0),),
              accountEmail: Text("yasmin@gmail.com",style: TextStyle(color: Colors.yellow,fontSize: 12.0)),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person,color: Colors.green,size: 60.0,),
                ),
              ),),
            // For the menu
            InkWell(
              child: ListTile(
                onTap: (){},
                title: Text("Home",style: TextStyle(color: Colors.green[800],)),
                leading: Icon(Icons.store,color: Colors.green[800],),
              ),
            ),
            InkWell(
              child:ListTile(
                onTap: (){},
                title: Text("My Account",style:TextStyle(color:Colors.green[800]),),
                leading: Icon(Icons.account_box,color:Colors.green[800]),
              ),),
            InkWell(
              child:ListTile(
                onTap: (){},
                title: Text("My Orders",style:TextStyle(color:Colors.green[800]),),
                leading: Icon(Icons.card_giftcard,color:Colors.green[800]),
              ),),
            InkWell(
              child:ListTile(
                onTap: (){},
                title: Text("My Cart",style:TextStyle(color:Colors.green[800]),),
                leading: Icon(Icons.shopping_basket,color:Colors.green[800]),
              ),),
            InkWell(
              child:ListTile(
                onTap: (){},
                title: Text("My Favorite",style:TextStyle(color:Colors.green[800]),),
                leading: Icon(Icons.favorite,color:Colors.green[800]),
              ),),
            Divider(color: Colors.green,height: 4.0,),
            InkWell(
              child:ListTile(
                onTap: (){},
                title: Text("Settings",style:TextStyle(color:Colors.green[800]),),
                leading: Icon(Icons.settings,color:Colors.green[800]),
              ),),
            InkWell(
              child:ListTile(
                onTap: (){},
                title: Text("Help",style:TextStyle(color:Colors.green[800]),),
                leading: Icon(Icons.help,color:Colors.green[800]),
              ),)
          ],
        ),
      ) ,*//*

  }
}*/



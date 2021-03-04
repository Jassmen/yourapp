import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_app_task/model/cart.dart';




import 'cart_item_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:20),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context,index)=> Padding(
          padding:  EdgeInsets.symmetric(vertical:10),
          child: Dismissible(
              key: Key(demoCarts[index].product.id.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFFFE6E6)
                ),
                child: Row(
                  children: [
                    Spacer(),
                    SvgPicture.asset("assets/icons/Trash.svg")
                  ],
                ),
              ),
              onDismissed: (direction){
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
              child: CartItemCard(cart: demoCarts[index],)),
        ),),
    );
  }
}

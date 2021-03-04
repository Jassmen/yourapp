import 'package:flutter/material.dart';

import '../../../constants.dart';

class BottomWidget extends StatelessWidget
{
  const BottomWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          height: 275,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          padding: EdgeInsets.only(bottom: 15,right: 15,left: 15),
          decoration: BoxDecoration(
            color: kPrimaryLightColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric( vertical: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/img3.png')
                    )
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'أطلب أي شي ',
                        style: TextStyle(
                            color: kPrimaryLightColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'المسوق الشخصى يفرغ لك في أى وقت',
                        style: TextStyle(
                            color: kPrimaryLightColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
    );
  }
}
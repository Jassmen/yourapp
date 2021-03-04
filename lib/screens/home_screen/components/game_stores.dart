import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_app_task/screens/game/game_screen.dart';

import '../../../constants.dart';

class GameStores extends StatelessWidget {
  const GameStores({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xFF2A699C).withOpacity(.1),
          /*image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/img1.png')
          ),*/
          borderRadius: BorderRadius.circular(25)
      ),
        child: ListTile(
          onTap: (){
           // Navigator.pushNamed(context, GameScreen.routeName);
          },
            leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
            title: Text('متاجر الالعاب',textAlign: TextAlign.end,),
            subtitle:  Text('نوصلك كل انواع الهدايا',textAlign: TextAlign.end,),
            trailing: Container(
              width: 50,
                height: 50,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(50)
                ),
                child: SvgPicture.asset('assets/icons/game.svg'),)

      ),
    );
  }
}


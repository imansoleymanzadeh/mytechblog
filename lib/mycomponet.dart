
import 'package:flutter/material.dart';
import 'package:techblog2/mycolors.dart';

import 'models/fakedata.dart';

class tecdivider extends StatelessWidget {

  const tecdivider({
    Key? key,
    required this.size,
  }) : super(key: key);
  final  size ;


  @override
  Widget build(BuildContext context) {

    return Divider(
      thickness: 1.5,
      color: mycolors.Divider
      ,
      indent: size.width/6,
      endIndent: size.width/6,
    );
  }
}
class buttentekblig extends StatelessWidget {
  const buttentekblig({
  
    required this.themetext,
    required this.text,
    required this.onPressed

});

  final TextTheme themetext;
  final String text;
  final Function()onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
        text,
        ),
        style: ButtonStyle(
          textStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return themetext.headline1;
            }

            return themetext.headline2;
          }),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.blue;
            }
            ;
            return mycolors.primericolor;
          }),
        ) ,
        );
  }
}
class taglistt extends StatelessWidget {
  const taglistt({
    Key? key,
    required this.paddinghome,
    required this.themetext,
    required this.index,
    
  }) : super(key: key);

  final double paddinghome;
  final TextTheme themetext;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 6, 14, 6),
      height: 42,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          gradient: LinearGradient(
              colors: mycolorsgradint.HashTagcolor,
              begin: Alignment.centerRight,
              end: Alignment.centerLeft)),
      child: Row(children: [
        ImageIcon(
          AssetImage('assets/icons/hashtagicon.png'),
          size: 16,
          color: Color.fromARGB(255, 230, 230, 230),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
         tagList[index].title,
          style: themetext.headline2,
        ),
      ]),
    );
  }
}

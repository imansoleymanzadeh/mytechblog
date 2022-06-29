// import 'dart:html';
// import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:techblog2/mycolors.dart';
import 'package:techblog2/mystrings.dart';
// import '../models/fakedata.dart';
import '../mycomponet.dart';

class Prifilescreen extends StatelessWidget {

  Prifilescreen({
    Key? key,
    required this.size,
    required this.themetext,
    required this.paddinghome,
  }) : super(key: key);

  final Size size;
  final TextTheme themetext;
  final double paddinghome;

  @override
  Widget build(BuildContext context) {
    // Padding(
    //   padding: EdgeInsets.only(right: paddinghome),
    //   child: Row(
    //     children: [
    //       Icon(
    //         Icons.more,
    //         color: mycolors.seemore,
    //       ),
    //       SizedBox(
    //         width: 8,
    //       ),
    //       Text(
    //         myatrings.Viewhotepoudkast,
    //         style: themetext.headline3,
    //       )
    //     ],
    //   ),
    // );
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/profileAvatar.png',
              height: 100,
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(
                    AssetImage(
                      'assets/icons/blue_pen.png',
                    ),
                    color: mycolors.colortitle),
                SizedBox(
                  width: 8,
                ),
                Text(
                  myatrings.editprofil,
                  style: themetext.headline3,
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'فاطمه امیری',
              style: themetext.headline4,
            ),
            Text(
              'iman7979797979@gmail.com',
              style: themetext.headline4,
            ),
            SizedBox(
              height: 40,
            ),
            tecdivider(size: size),
            textdivider(
              themetext: themetext,
              text: myatrings.myfavbblog,
            ),
            tecdivider(size: size),
            textdivider(
              themetext: themetext,
              text: myatrings.myfavbpod,
            ),
            tecdivider(size: size),
            textdivider(themetext: themetext, text: myatrings.logout),
            tecdivider(size: size),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class textdivider extends StatelessWidget {
  const textdivider({Key? key, required this.themetext, required this.text})
      : super(key: key);

  final TextTheme themetext;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: mycolors.primericolor,
      child: SizedBox(
          height: 45,
          child: Center(
              child: Text(
            text,
            style: themetext.headline4,
          ))),
    );
  }
}

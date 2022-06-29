// import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:techblog2/mycolors.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:techblog2/view/homescreen.dart';
// import 'package:tek1/mystrings.dart';
import 'package:techblog2/view/profilescreen.dart';
import 'Register.dart';

// import '../models/fakedata.dart';
// import 'homescreen.dart';
  int selctedpages = 0;

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

final GlobalKey<ScaffoldState> keyy = GlobalKey();

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    var themetext = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    var paddinghome = size.width / 10;

    // List<Widget> Pages = [
    //   Homescreen(size: size, themetext: themetext, paddinghome: paddinghome),
    //   Prifilescreen(size: size, themetext: themetext, paddinghome: paddinghome),

    // ];

    return SafeArea(
      child: Scaffold(
        key: keyy,
        drawer: Drawer(
          backgroundColor: mycolors.scafoldcolor,
          child: Padding(
            padding: EdgeInsets.only(right: paddinghome, left: paddinghome),
            child: ListView(children: [
                DrawerHeader(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Center(
                child: Image.asset(
                  'assets/images/30_splash-screen--git-in-vscode-and-fork-git-project-with-students.png',
                  scale: 3,
                ),
              )),
              ListTile(
                onTap: () {},
                
                title: Text(
                  'پروفایل کاربری',
                  style: themetext.headline4,
                ),
              ),
              Divider(
                color: mycolors.Divider,
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  'درباره تک بلاک',
                  style: themetext.headline4,
                ),
              ),
              Divider(
                color: mycolors.Divider,
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  'اشتراک گذاری تک بلاگ',
                  style: themetext.headline4,
                ),
              ),
              Divider(
                color: mycolors.Divider,
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  'تک بلاگ در گیت هاپ',
                  style: themetext.headline4,
                ),
              ),
              Divider(
                color: mycolors.Divider,
              ),
            
            ]),
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: mycolors.scafoldcolor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  keyy.currentState!.openDrawer();
                },
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              Image.asset(
                'assets/images/30_splash-screen--git-in-vscode-and-fork-git-project-with-students.png',
                height: size.height / 13.6,
              ),
              Icon(
                Icons.search,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Positioned.fill(
                child: IndexedStack(
              index: selctedpages,
              children: [
                Homescreen(
                    size: size, themetext: themetext, paddinghome: paddinghome),
                Register(),
                Prifilescreen(
                    size: size, themetext: themetext, paddinghome: paddinghome),
              ],
            )),
            navebutten(
              size: size,
              paddinghome: paddinghome,
              chengpages: (int value) {
                setState(() {
                  selctedpages = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class navebutten extends StatelessWidget {
  final Size size;
  final double paddinghome;
  final Function(int) chengpages;

  const navebutten({
    Key? key,
    required this.chengpages,
    required this.size,
    required this.paddinghome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      bottom: 0,
      child: Container(
        height: size.height / 10,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: mycolorsgradint.buttennavigshenbag,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Container(
          margin: EdgeInsets.only(left: paddinghome, right: paddinghome,bottom: 10),
          height: size.height / 8,
          
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: mycolorsgradint.buttennavigshen),
              borderRadius: BorderRadius.circular(18)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    chengpages(0);
                  },
                  color: selctedpages==0?Colors.amber:Colors.white,
                  icon: Image.asset('assets/icons/homee.png')),
              IconButton(
                  onPressed: () {

                    chengpages(1);
                  },
                                    color: selctedpages==1?Colors.amber:Colors.white,

                  icon: Image.asset('assets/icons/write.png')),
              IconButton(
                onPressed: () {
                  chengpages(2);
                },
                                  color: selctedpages==0?Colors.amber:Colors.white,

                icon: Image.asset('assets/icons/user.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//  Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                   children: [
//                                     Text(
//                                       fakedata['writer'],
//                                       style: themetext.subtitle1,
//                                     ),
//                                     Row(
//                                       children: [
//                                         Text(
//                                           bloglistdata[index].views,
//                                           style: themetext.subtitle1,
//                                         ),
//                                         SizedBox(
//                                           width: 8,
//                                         ),
//                                         const Icon(
//                                           Icons.remove_red_eye_sharp,
//                                           color: Color.fromARGB(244, 255, 255, 255),
//                                           size: 16,
//                                         ),
//                                       ],
//                                     ),




// import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techblog2/mycolors.dart';
import 'package:techblog2/mystrings.dart';
import 'package:techblog2/view/mycat.dart';
// import 'package:tek1/viow/profilescreen.dart';
import 'package:validators/validators.dart';
import '../mycomponet.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themetext = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SvgPicture.asset(
              'assets/icons/tcbot.svg',
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: myatrings.welcom,
                    style: themetext.headline4,
                  )),
            ),
            buttentekblig(
                themetext: themetext,
                text: 'ادامه',
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Container(
                        margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        height: size.height / 2,
                        decoration: BoxDecoration(
                            color: mycolors.scafoldcolor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  myatrings.emailregister,
                                  style: themetext.headline4,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 24, 24, 24),
                                  child: TextField(
                                    onChanged: (value) {
                                      print(isEmail(value));
                                    },
                                    style: themetext.headline5,
                                    decoration: InputDecoration(
                                      hintText: 'tekblog@gmail.com',
                                      hintStyle: themetext.headline5,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                
                                buttentekblig(
                                  text: 'ادامه',
                                  themetext: themetext,
                                  onPressed: () {
                                    Navigator.pop(context);

                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                              bottom: MediaQuery.of(context)
                                                  .viewInsets
                                                  .bottom),
                                          child: Container(
                                            height: size.height / 2,
                                            decoration: BoxDecoration(
                                                color: mycolors.scafoldcolor,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30))),
                                            child: Center(
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      myatrings.emailcode,
                                                      style:
                                                          themetext.headline4,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          24, 24, 24, 24),
                                                      child: TextField(
                                                        onChanged: (value) {
                                                          print(isEmail(value));
                                                        },
                                                        style:
                                                            themetext.headline5,
                                                        decoration:
                                                            InputDecoration(
                                                          hintText: '******',
                                                          hintStyle: themetext
                                                              .headline5,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    buttentekblig(
                                                      text: 'ثبت کذ',
                                                      themetext: themetext,
                                                      onPressed: () {
                                                        Navigator.pushReplacement(
                                                            context,
                                                            MaterialPageRoute(
                                                          builder: (context) {
                                                            return mycat();
                                                          },
                                                        ));
                                                      },
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ]),
                        ),
                      );
                    },
                  );
                })
          ]),
        ),
      ),
    );
  }
}







                    //       isScrollControlled: true,
                    // backgroundColor: Colors.transparent,
                    // context: context,
                    // builder: (context) {
                    //   return Padding(
                    //     padding: EdgeInsets.only(
                    //         bottom: MediaQuery.of(context).viewInsets.bottom),
                    //     child: Container(
                    //       height: size.height / 2,
                    //       decoration: BoxDecoration(
                    //           color: mycolors.scafoldcolor,
                    //           borderRadius: BorderRadius.only(
                    //               topLeft: Radius.circular(30),
                    //               topRight: Radius.circular(30))),
                    //       child: Center(
                    //         child: Column(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Text(
                    //                 myatrings.emailregister,
                    //                 style: themetext.headline4,
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.fromLTRB(
                    //                     24, 24, 24, 24),
                    //                 child: TextField(
                    //                   onChanged: (value) {
                    //                     print(isEmail(value));
                    //                   },
                    //                   style: themetext.headline5,
                    //                   decoration: InputDecoration(
                    //                     hintText: 'tekblog@gmail.com',
                    //                     hintStyle: themetext.headline5,
                    //                   ),
                    //                   textAlign: TextAlign.center,
                    //                 ),
                    //               ),
                    //               buttentekblig(
                    //                 text: 'ادامه',
                    //                 themetext: themetext,
                    //                 onPressed: () {},)]),
import 'package:techblog2/mycolors.dart';
import 'package:techblog2/mystrings.dart';
import 'package:techblog2/models/datamodels.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techblog2/mycomponet.dart';
import 'package:flutter/material.dart';

import '../models/fakedata.dart';

class mycat extends StatefulWidget {
  const mycat({Key? key}) : super(key: key);

  @override
  State<mycat> createState() => _mycatState();
}

class _mycatState extends State<mycat> {
  @override
  Widget build(BuildContext context) {
    var texttheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double padindpag = size.width / 10;
    return SafeArea(
        child: Scaffold(
      backgroundColor: mycolors.scafoldcolor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 32,
              ),
              SvgPicture.asset(
                'assets/icons/tcbot.svg',
                height: 100,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                myatrings.emaliregistered,
                style: texttheme.headline4,
              ),
              Padding(
                padding: EdgeInsets.only(left: padindpag, right: padindpag),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintText: 'نام و نام خانوادگی',
                    hintStyle: texttheme.headline4,
                  ),
                ),
              ),
           const   SizedBox(
                height: 32,
              ),
              Text(
                myatrings.taglike,
                style: texttheme.headline4,
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 32, right: padindpag, left: padindpag),
                child: SizedBox(
                  height: 99,
                  width: double.infinity,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      itemCount: tagList.length,
                      shrinkWrap: true,
                      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 7,
                          mainAxisSpacing: 7,
                          // childAspectRatio: 0.3,
                          mainAxisExtent: 150),
                      itemBuilder: (contex, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              if (!tagnew.contains(tagList[index])) {
                                tagnew.add(tagList[index]);
                              }
                            });
                            // setState(() {
                            //   tagnew.add(HashTag(title: tagList[index].title));
                            //   tagList.removeAt(index);
                            // });
                          },
                          child: taglistt(
                              paddinghome: padindpag,
                              themetext: texttheme,
                              index: index),
                        );
                      }),
                ),
              ),
          const    SizedBox(
                height: 16,
              ),
              Image.asset(
                'assets/images/64616.png',
                scale: 2.5,
              ),
            const  SizedBox(
                height: 32,
              ),
              Padding(
                padding: EdgeInsets.only(right: padindpag, left: padindpag),
                child: SizedBox(
                  height: 95,
                  width: double.infinity,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      itemCount: tagnew.length,
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 7,
                          mainAxisSpacing: 7,
                          // childAspectRatio: 0.2,
                          mainAxisExtent: 170),
                      itemBuilder: (contex, index) {
                        return Container(
                            padding: EdgeInsets.fromLTRB(25, 6, 14, 6),
                            // height: 42,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 241, 241, 241),
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  tagnew[index].title,
                                  style: texttheme.headline4,
                                ),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        tagList.add(HashTag(
                                            title: tagnew[index].title));
                                        tagnew.removeAt(index);
                                      });
                                    },
                                    child:const Icon(
                                      Icons.delete,
                                      color: Colors.black,
                                    ))
                              ],
                            ));
                      }),
                ),
              ),
          const    SizedBox(
                height: 20,
              ),
              buttentekblig(
                text: 'ادامه',
                themetext: texttheme,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

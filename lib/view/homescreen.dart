import 'package:flutter/material.dart';
import 'package:techblog2/mycolors.dart';
import 'package:techblog2/mystrings.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:tek1/viow/profilescreen.dart';
import '../models/fakedata.dart';
import '../mycomponet.dart';

class Homescreen extends StatelessWidget {
  Homescreen({
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
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: Column(
          children: [
            sliderhome(size: size, themetext: themetext),
            const SizedBox(
              height: 16,
            ),
            taglist(paddinghome: paddinghome, themetext: themetext),
            const SizedBox(
              height: 32,
            ),
            titileblog(paddinghome: paddinghome, themetext: themetext),
            HomePageBlogList(
                size: size, bodyMargin: paddinghome, textTheme: themetext),
            const SizedBox(
              height: 32,
            ),
            SeeMorePodcast(bodyMargin: paddinghome, textTheme: themetext),
            HomePagePodcastList(size: size, bodyMargin: paddinghome),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class HomePagePodcastList extends StatelessWidget {
  const HomePagePodcastList({
    Key? key,
    required this.size,
    required this.bodyMargin,
  }) : super(key: key);

  final Size size;
  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
          itemCount: podcastList.getRange(0, 5).length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            //podcast item
            return Padding(
              padding: EdgeInsets.only(right: index == 0 ? bodyMargin : 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: size.height / 5.3,
                      width: size.width / 2.4,
                      child: Stack(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16)),
                            image: DecorationImage(
                                image:
                                    NetworkImage(podcastList[index].imageUrl),
                                fit: BoxFit.cover),
                          ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                      width: size.width / 2.4,
                      child: Text(
                        podcastList[index].title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            );
          })),
    );
  }
}

class SeeMorePodcast extends StatelessWidget {
  const SeeMorePodcast({
    Key? key,
    required this.bodyMargin,
    required this.textTheme,
  }) : super(key: key);

  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: bodyMargin, bottom: 8),
      child: Row(
        children: [
          Icon(
            Icons.more,
            color: mycolors.colortitle,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            myatrings.Viewhotepoudkast,
            style: textTheme.headline3,
          )
        ],
      ),
    );
  }
}

class HomePageBlogList extends StatelessWidget {
  const HomePageBlogList({
    Key? key,
    required this.size,
    required this.bodyMargin,
    required this.textTheme,
  }) : super(key: key);

  final Size size;
  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
          itemCount: bloglistdata.getRange(0, 5).length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            //blog item
            return Padding(
              padding: EdgeInsets.only(right: index == 0 ? bodyMargin : 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: size.height / 5.3,
                      width: size.width / 2.4,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      bloglistdata[index].imageUrl),
                                  fit: BoxFit.cover),
                            ),
                            foregroundDecoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: mycolorsgradint.sliderplost)),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  bloglistdata[index].writer,
                                  style: textTheme.subtitle1,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      bloglistdata[index].views,
                                      style: textTheme.subtitle1,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Icon(
                                      Icons.remove_red_eye_sharp,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                      width: size.width / 2.4,
                      child: Text(
                        bloglistdata[index].title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            );
          })),
    );
  }
}

class titileblog extends StatelessWidget {
  const titileblog({
    Key? key,
    required this.paddinghome,
    required this.themetext,
  }) : super(key: key);

  final double paddinghome;
  final TextTheme themetext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: paddinghome,
        bottom: 8,
      ),
      child: Row(
        children: [
          Icon(
            Icons.more,
            color: mycolors.seemore,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            myatrings.Viewhotesblog,
            style: themetext.headline3,
          ),
        ],
      ),
    );
  }
}

class taglist extends StatelessWidget {
  const taglist({
    Key? key,
    required this.paddinghome,
    required this.themetext,
  }) : super(key: key);

  final double paddinghome;
  final TextTheme themetext;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tagList.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding:EdgeInsets.fromLTRB(0, 0, index == 0 ? paddinghome : 10, 0),
              child: taglistt(paddinghome: paddinghome, themetext: themetext,index: index,),
            );
          })),
    );
  }
}


class sliderhome extends StatelessWidget {
  const sliderhome({
    Key? key,
    required this.size,
    required this.themetext,
  }) : super(key: key);

  final Size size;
  final TextTheme themetext;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: size.width / 1.25,
        height: size.height / 4.2,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            image: DecorationImage(
                image: AssetImage(fakedata["imageasset"]), fit: BoxFit.cover)),
        foregroundDecoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(
              colors: mycolorsgradint.slider,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
      ),
      Positioned(
        bottom: 9,
        left: 0,
        right: 0,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  fakedata['writer'] + ' - ' + fakedata['date'],
                  style: themetext.subtitle1,
                ),
                Row(
                  children: [
                    Text(
                      fakedata['view'],
                      style: themetext.subtitle1,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.remove_red_eye_sharp,
                      color: Color.fromARGB(244, 255, 255, 255),
                      size: 16,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'دوازده قدم برنامه نویسی یک دوره ای...',
              style: themetext.headline1,
            ),
          ],
        ),
      ),
    ]);
  }
}

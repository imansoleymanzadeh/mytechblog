// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techblog2/mycolors.dart';
import 'package:techblog2/mycolors.dart';
import 'package:techblog2/splashscreen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: mycolors.scafoldcolor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: mycolors.scafoldcolor,
      systemNavigationBarIconBrightness: Brightness.dark));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var themetext = Theme.of(context).textTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('fa', ''), // English, no country code
      ],
      theme: ThemeData(
          fontFamily: 'dana',
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: mycolors.primericolor, width: 2),
            ),
          ),
          textTheme: TextTheme(
              headline1: TextStyle(
                  color: mycolors.postertitlecolor,
                  fontFamily: 'dana',
                  fontSize: 16,
                  // letterSpacing:2.0 ,
                  fontWeight: FontWeight.w700),
              subtitle1: TextStyle(
                  color: Color.fromARGB(144, 255, 255, 255),
                  fontFamily: 'dana',
                  fontSize: 14,
                  // letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
              headline2: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 14,
                  color: Color.fromARGB(255, 230, 230, 230),
                  fontWeight: FontWeight.w300),
              headline3: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 14,
                  color: mycolors.seemore,
                  fontWeight: FontWeight.w700),
              headline4: TextStyle(
                  fontFamily: 'dana',
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
              bodyText1: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 13,
                  fontWeight: FontWeight.w300),
              headline5: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 13,
                  color: Color.fromARGB(255, 219, 219, 219),
                  fontWeight: FontWeight.w300),
              bodyText2: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w300))),
      home: splash(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:techblog2/view/home.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);
  @override
  // static bool netconnec = false;
  // static Future<bool> cheknet() async {
  //   Connectivity().onConnectivityChanged.listen((event) {
  //     if (event == ConnectivityResult.mobile ||
  //         event == ConnectivityResult.wifi) {
  //       netconnec = true;
  //     } else {
  //       netconnec = false;
  //     }
  //   });
  //   return netconnec;
  //   // return netconnec;
  // }

  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return home();
        },
      ));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/30_splash-screen--git-in-vscode-and-fork-git-project-with-students.png',
                height: 64,
                width: double.infinity,
              ),
//             spinkit = SpinFadingCube(
//   color: Color.fromARGB(255, 132, 35, 119),
//   size: 32.0,
// );
            ],
          ),
        ),
      ),
    );
  }
}

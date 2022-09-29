import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pry20220116/screens/option.dart';
//import 'package:pry20220116/widgets/camera_sc.dart';
//import 'package:path/path.dart';
//import 'package:path_provider/path_provider.dart';
import 'package:pry20220116/screens/option.dart';

/*void main() {
  runApp(const MyApp());
}*/

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyDAkVaZFWRkA2rWnH3fKMIOEH2wpc9CSG0", appId: "1:340493700277:android:37e3aea13ec36f5ba342fc", messagingSenderId: "340493700277", projectId: "wisha-database")
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var pixelRatio = window.devicePixelRatio;
    var logicalScreenSize = window.physicalSize / pixelRatio;
    var logicalWidth = logicalScreenSize.width;

    return MaterialApp(
      title: 'Chatbot',
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: logicalWidth / 14, // 360 / 18
            fontWeight: FontWeight.w600, // Semi-bold
            color: Colors.black,
          ),
          headline2: TextStyle(
            fontSize: logicalWidth / 18, // 360 / 18
            fontWeight: FontWeight.w500, // Medium
            color: Colors.black,
          ),
          headline3: TextStyle(
            fontSize: logicalWidth / 20, // 360 / 16
            fontWeight: FontWeight.w500, // Medium
            color: Colors.black,
          ),
          headline4: TextStyle(
            fontSize: logicalWidth / 20, // 360 / 16
            fontWeight: FontWeight.w600, // Semi-bold
            color: Colors.black,
          ),
          subtitle1: TextStyle(
            fontSize: logicalWidth / 22, // 360 / 16
            fontWeight: FontWeight.w500, // Medium
            color: Colors.black,
          ),
          subtitle2: TextStyle(
            fontSize: logicalWidth / 22, // 360 / 16
            fontWeight: FontWeight.w400, // Regular
            color: Colors.black,
          ),
          bodyText1: TextStyle(
            fontSize: logicalWidth / 24, // 360 / 14
            fontWeight: FontWeight.w400, // Regular
            color: Colors.black,
          ),
          bodyText2: TextStyle(
            fontSize: logicalWidth / 26, // 360 / 12
            fontWeight: FontWeight.w400, // Regular
            color: Colors.black,
          ),
          caption: TextStyle(
            fontSize: logicalWidth / 26, // 360 / 12
            fontWeight: FontWeight.w400, // Regular
            color: Colors.black54,
          ),
          overline: TextStyle(
            fontSize: logicalWidth / 26, // 360 / 10
            fontWeight: FontWeight.w500, // Medium
            color: Colors.white,
          ),
        ),
        fontFamily: 'Montserrat',
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder()
        )
      ),
      debugShowCheckedModeBanner: false,

      home: Option(),
      //initialRoute: '/home',
      /*routes: {
        '/': (context) => const Login(),
        '/home': (context) => const Home()
      },*/
    );
  }
}


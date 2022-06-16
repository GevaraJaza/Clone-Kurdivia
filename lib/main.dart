import 'package:clonekurdivia/Pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "kurdish",
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 18,color: Colors.white),
          bodyText2: TextStyle(fontSize: 15,color: Colors.grey),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      home: const MyHomePage(),
    );
  }
}


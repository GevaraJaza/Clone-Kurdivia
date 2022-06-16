import 'package:clonekurdivia/Pages/fpage.dart';
import 'package:clonekurdivia/Pages/spage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _ci = 0;
  final _screens = [
    FPage(),
    SPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: _screens[_ci],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple,
        onTap: (value){
          setState(() {
            _ci = value;
          });
        },
        currentIndex: _ci,
        iconSize: 30,
        items: [
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.home,
          ),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: "",
          backgroundColor: Colors.white,
        ),
      ]),
    );
  }
}

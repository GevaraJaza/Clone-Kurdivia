// import 'dart:js';

import 'package:clonekurdivia/Pages/Sittings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SPage extends StatefulWidget {
  const SPage({Key? key}) : super(key: key);

  @override
  State<SPage> createState() => _SPageState();
}

final double _coverhight = 400;
final double _profil = 135;
double _top = _profil - _coverhight / 2;

class _SPageState extends State<SPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SittingPage(),));
                      },
                      icon: Icon(
                        Icons.settings,
                        size: 35,
                        color: Colors.white,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 95,
            ),
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                con(),
                Positioned(
                  top: _top,
                  child: Profile(),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}

Widget Profile() => CircleAvatar(
      backgroundImage: AssetImage('Assets/Images/1.jpg'),
      radius: _profil / 2,
    );
Widget con() => Container(
      height: _coverhight,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 241, 241, 241),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text("Gevara Jaza",style: TextStyle(fontSize: 25,color: Colors.black,)),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  hintTextDirection: TextDirection.rtl,
                  hintText: "ناوی بەکارهێنەر",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Icon(
                    Icons.person_outline,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: TextField(
              textAlign: TextAlign.right,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintTextDirection: TextDirection.rtl,
                  hintText: "ژمارەی مۆبایل بنووسە ",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Icon(
                    Icons.phone_android,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 175,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "دەرچوون",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.logout_rounded,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                Icons.facebook,
                color: Colors.deepPurpleAccent[200],
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              FaIcon(
                Icons.tiktok,
                color: Colors.deepPurpleAccent[200],
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              FaIcon(
                Icons.phone,
                color: Colors.deepPurpleAccent[200],
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              FaIcon(
                Icons.whatsapp,
                color: Colors.deepPurpleAccent[200],
                size: 30,
              ),
            ],
          )
        ],
      ),
    );

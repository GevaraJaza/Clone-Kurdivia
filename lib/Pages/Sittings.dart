import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SittingPage extends StatefulWidget {
  const SittingPage({Key? key}) : super(key: key);

  @override
  State<SittingPage> createState() => _SittingPageState();
}

class _SittingPageState extends State<SittingPage> {
  bool ac = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            BackButton(
              color: Colors.white,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 570,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  color: Color.fromARGB(255, 236, 236, 236)),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      width: 350,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Switch(
                            activeColor: Color.fromARGB(255, 0, 207, 235),
                            activeTrackColor: Color.fromARGB(255, 0, 207, 235),
                            onChanged: (value) {
                              setState(() {
                                ac = value;
                              });
                            },
                            value: ac,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("ئاگادارکردنەوەکانم بۆ بێت")
                        ],
                      )),
                  Text(
                    "دەربارەی ئێمە",
                    style: Theme.of(context).textTheme.headline1,
                    textAlign: TextAlign.right,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      "پلاتفۆرمی کوردی راستەوخۆ یاری پرسیار و وەڵام و هەلی بردنەوەی خەڵاتی جۆراوجۆر",
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    "Assets/Images/3.png",
                    height: 230,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    child: Text(
                      "سیاسەتی تایبەتی",
                      style: TextStyle(color: Colors.deepPurple, fontSize: 16),
                    ),
                  ),
                  Text(
                    "Midient Corp.",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

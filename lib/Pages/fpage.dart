import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FPage extends StatefulWidget {
  const FPage({Key? key}) : super(key: key);

  @override
  State<FPage> createState() => _FPageState();
}

class _FPageState extends State<FPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'Assets/Images/1.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Gevara Jaza",
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 150, left: 20, right: 20),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    height: 270,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 5),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.cyan,
                              ),
                              child: Text(
                                "ئەمڕۆ 9:00 ی شەو",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 70,
                          height: 40,
                          alignment: Alignment.center,
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            color: Colors.cyan,
                          ),
                          child: Text(
                            "10",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 40,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(bottom: 5, right: 105),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                                color: Colors.cyan,
                              ),
                              child: Text(
                                "=",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                            Image.asset(
                              "Assets/Images/2.png",
                              width: 70,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "١٥٠٠٠٠ هەزار",
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 130, 64, 243),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Majidi Mall',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "سپۆنسەر",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.ads_click,
                                        size: 20,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
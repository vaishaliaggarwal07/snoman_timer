import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn_speed/button.dart';
import 'package:learn_speed/snowman.dart';
import 'package:learn_speed/snowmanCute.dart';
import 'package:learn_speed/snowmanSleep.dart';
import 'package:learn_speed/snowmanTired.dart';
import 'package:learn_speed/tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int snowManCount = 1;
  double snowManPosX = 0.0;

  String snowManDirection = 'left';
  bool snowManVisible = false;

  //snowman tired
  int snowManTiredCount = 1;
  double snowManTiredPosX = 0.0;

  String snowManTiredDirection = 'left';
  bool snowManTiredVisible = false;

  //snowman sleep
  int snowManSleepCount = 1;
  double snowManSleepPosX = 0.0;

  String snowManSleepDirection = 'left';
  bool snowManSleepVisible = false;

  //snowman cute
  int snowManCuteCount = 1;
  double snowManCutePosX = 0.0;

  String snowManCuteDirection = 'left';
  bool snowManCuteVisible = false;

  //treee
  int treeCount = 1;
  double treePosX = 0.0;

  String treeDirection = 'left';
  bool treeVisible = false;

  void startTimer() {
    moveSnowManCute();
  }

  void moveSnowManCute() {
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      setState(() {
        snowManCount++;
        if (snowManDirection == 'left') {
          snowManPosX -= 0.10;
        } else {
          snowManPosX += 0.10;
        }

        if (snowManPosX < -0.3) {
          snowManDirection = 'right';
        } else if (snowManPosX > 0.3) {
          snowManDirection = 'left';
        }

        if (snowManCount == 5) {
          snowManCount = 1;
        }
      });
    });
  }

  void tiredSnowMan() {
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      setState(() {
        snowManTiredCount++;

        if (snowManTiredCount == 10) {
          snowManTiredCount = 1;
        }
      });
    });
  }

  void sleepSnowMan() {
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      setState(() {
        snowManSleepCount++;

        if (snowManSleepCount == 5) {
          snowManSleepCount = 1;
        }
      });
    });
  }

  void cuteSnowMan() {
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      setState(() {
        snowManCuteCount++;
        if (snowManCuteDirection == 'left') {
          snowManCutePosX -= 0.10;
        } else {
          snowManCutePosX += 0.10;
        }

        if (snowManCutePosX < -0.3) {
          snowManCuteDirection = 'right';
        } else if (snowManCutePosX > 0.3) {
          snowManCuteDirection = 'left';
        }

        if (snowManCuteCount == 9) {
          snowManCuteCount = 1;
        }
      });
    });
  }

  void startTree() {
    Timer.periodic(Duration(seconds: 10), (timer) {
      setState(() {
        treeCount++;

        if (treeCount == 6) {
          treeCount = 1;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            // flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 235, 245, 251),
                image: DecorationImage(
                    image: AssetImage("lib/images/backgroundSky.png"),
                    fit: BoxFit.fitWidth),
              ),
              // color: Colors.blue[300],
              child: Stack(
                children: [
                  Visibility(
                    visible: snowManVisible,
                    child: Container(
                      alignment: Alignment(snowManPosX, 1),
                      child: SnowMan(
                        snowManDirection: snowManDirection,
                        snowManCount: snowManCount,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: snowManTiredVisible,
                    child: Container(
                      alignment: Alignment(snowManTiredPosX, 1),
                      child: SnowManTired(
                        snowManTiredDirection: snowManTiredDirection,
                        snowManTiredCount: snowManTiredCount,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: snowManSleepVisible,
                    child: Container(
                      alignment: Alignment(snowManSleepPosX, 1),
                      child: SnowManSleep(
                        snowManSleepDirection: snowManSleepDirection,
                        snowManSleepCount: snowManSleepCount,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: snowManCuteVisible,
                    child: Container(
                      alignment: Alignment(snowManCutePosX, 1),
                      child: SnowManCute(
                        snowManCuteDirection: snowManCuteDirection,
                        snowManCuteCount: snowManCuteCount,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: treeVisible,
                    child: Container(
                      alignment: Alignment(treePosX, 1),
                      child: Tree(
                        treeDirection: treeDirection,
                        treeCount: treeCount,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
              height: 1,

              // decoration: const BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage("lib/images/tiles1.png"),

              //     fit: BoxFit.fitWidth),

              // ),

              color: Color.fromARGB(255, 245, 247, 247)),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 245, 247, 247),
                  image: DecorationImage(
                      image: AssetImage("lib/images/background2.png"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('T I M E R', style: TextStyle(color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyButton(
                        text: 'START',
                        function: () {
                          setState(() {
                            snowManVisible = !snowManVisible;
                            snowManTiredVisible = false;
                            snowManSleepVisible = false;
                          });
                          startTimer();
                          Future.delayed(Duration(seconds: 10), () {
                            snowManCuteVisible = !snowManCuteVisible;
                            snowManVisible = false;
                            cuteSnowMan();
                          });
                        },
                      ),
                      MyButton(
                        text: 'PAUSE',
                        function: () {
                          setState(() {
                            snowManTiredVisible = !snowManTiredVisible;
                            snowManVisible = false;
                            snowManCuteVisible = false;
                          });

                          tiredSnowMan();
                          Future.delayed(Duration(seconds: 10), () {
                            snowManSleepVisible = !snowManSleepVisible;
                            snowManTiredVisible = false;
                            sleepSnowMan();
                          });
                        },
                      ),
                      MyButton(
                        text: 'TREE',
                        function: () {
                          setState(() {
                            treeVisible = !treeVisible;
                            snowManTiredVisible = false;
                            snowManSleepVisible = false;
                            snowManVisible = false;
                            snowManCuteVisible = false;
                          });
                          startTree();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

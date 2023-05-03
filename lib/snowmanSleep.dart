import 'package:flutter/material.dart';
import 'dart:math';

class SnowManSleep extends StatelessWidget {
  final int? snowManSleepCount;
  final String? snowManSleepDirection;

  SnowManSleep({this.snowManSleepCount, this.snowManSleepDirection});

  @override
  Widget build(BuildContext context) {
    if (snowManSleepDirection == 'left') {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 50,
        width: 50,
        
        child: Image.asset('lib/images/snowmanSleep$snowManSleepCount.png'),
      
        
        
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 50,
          width: 50,
          
          child: Image.asset('lib/images/snowmanSleep$snowManSleepCount.png'),
          
         
        ),
      );
    }
  }
}

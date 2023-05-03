import 'package:flutter/material.dart';
import 'dart:math';

class SnowManTired extends StatelessWidget {
  final int? snowManTiredCount;
  final String? snowManTiredDirection;

  SnowManTired({this.snowManTiredCount, this.snowManTiredDirection});

  @override
  Widget build(BuildContext context) {
    if (snowManTiredDirection == 'left') {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 50,
        width: 50,
        // child: 
        // Opacity(
        // opacity: 1,
        child: Image.asset('lib/images/snowmanTired$snowManTiredCount.png'),
        // )
        
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 50,
          width: 50,
          // child: Opacity(
          //   opacity: 1, 
            child: Image.asset('lib/images/snowmanTired$snowManTiredCount.png'),
          // )
          
        ),
      );
    }
  }
}

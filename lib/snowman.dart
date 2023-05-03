import 'package:flutter/material.dart';
import 'dart:math';

class SnowMan extends StatelessWidget {
  final int? snowManCount;
  final String? snowManDirection;

  SnowMan({this.snowManCount, this.snowManDirection});

  @override
  Widget build(BuildContext context) {
    if (snowManDirection == 'left') {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 50,
        width: 50,
        
        child: Image.asset('lib/images/snowman$snowManCount.png'),
      
        
        
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 50,
          width: 50,
          
          child: Image.asset('lib/images/snowman$snowManCount.png'),
          
         
        ),
      );
    }
  }
}

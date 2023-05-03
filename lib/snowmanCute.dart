import 'package:flutter/material.dart';
import 'dart:math';

class SnowManCute extends StatelessWidget {
  final int? snowManCuteCount;
  final String? snowManCuteDirection;

  SnowManCute({this.snowManCuteCount, this.snowManCuteDirection});

  @override
  Widget build(BuildContext context) {
    if (snowManCuteDirection == 'left') {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 50,
        width: 50,
        
        child: Image.asset('lib/images/snowmanCute$snowManCuteCount.png'),
      
        
        
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 50,
          width: 50,
          
          child: Image.asset('lib/images/snowmanCute$snowManCuteCount.png'),
          
         
        ),
      );
    }
  }
}

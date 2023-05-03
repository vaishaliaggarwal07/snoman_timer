import 'package:flutter/material.dart';
import 'dart:math';

class Tree extends StatelessWidget {
  final int? treeCount;
  final String? treeDirection;

  Tree({this.treeCount, this.treeDirection});

  @override
  Widget build(BuildContext context) {
    if (treeDirection == 'left') {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 50,
        width: 50,
        
        child: Image.asset('lib/images/seed$treeCount.png'),
      
        
        
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 50,
          width: 50,
          
          child: Image.asset('lib/images/seed$treeCount.png'),
          
         
        ),
      );
    }
  }
}

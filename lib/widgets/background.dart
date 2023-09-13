// ignore_for_file: use_key_in_widget_constructors
import 'dart:math';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:[ 
            Color(0xff2E305F),
            Color(0xff202333)
          ]
        )
      );
    return Stack(
      children: [
        //degradado purpura
        Container(decoration: boxDecoration),

        //box rosado
        Positioned(
          top: -70,
          left: -30,
          child: _PinkBox()
        ),
      ],
    );
  }
}
class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 3, 
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(65),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188,  1),
              Color.fromRGBO(241, 142, 172, 1)
            ]
          )
        )
      ),
    );
  }
}
import 'dart:math';

import 'package:flutter/material.dart';


class Backgroud extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.8],
            colors: [
              Color(0xff2E305F),
              Color(0xff202333),
            ]
            
          )
         );
    return  Stack(
      children: [
        Container(
            decoration: boxDecoration,        
          ),
        Positioned(
            top: -100,
            left: -40,
            child: _PinkBox())
      ],
    );
   
  }
}

class _PinkBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    const gradient = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.8],
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(240, 133, 170, 1),           
            ]
         );

    return Transform.rotate(
      angle: -pi/ 5,
      child: Container(
        width: 340,
        height: 340,
        decoration: BoxDecoration(        
          borderRadius: BorderRadius.circular(70),
          gradient: gradient,
        ),
      ),
    );
  }
}
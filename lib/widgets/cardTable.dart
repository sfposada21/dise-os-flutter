import 'dart:ui';

import 'package:flutter/material.dart';


class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.ac_unit, text: 'Ice',),
            _SingleCard(color: Colors.purple, icon: Icons.face, text: 'Face',),
          ]
        )
        ,TableRow(
          children: [
            _SingleCard(color: Colors.red, icon: Icons.access_time_filled, text: 'Ice',),
            _SingleCard(color: Colors.yellow, icon: Icons.calendar_month, text: 'Ice',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.green, icon: Icons.wallet_giftcard, text: 'Ice',),
            _SingleCard(color: Colors.pink, icon: Icons.rule_sharp, text: 'Ice',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.purple, icon: Icons.wallet_giftcard, text: 'Ice',),
            _SingleCard(color: Colors.lightBlue, icon: Icons.rule_sharp, text: 'Ice',),
          ]
        ),
        
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final String text;
  final Color color;

  const _SingleCard({
    Key? key, required this.icon, required this.text, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5),
          child: Container(          
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 65, 107,0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor:  color,
                  child: Icon(icon, size: 30, color: Colors.white, ),
                ),
                SizedBox( height: 10,),
                Text(text,
                style: TextStyle( color: color, fontSize: 18),),
              ],
            )),
        ),
      ),
    );
  }
}
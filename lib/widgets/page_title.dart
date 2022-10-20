import 'package:flutter/material.dart';


class PageTittleScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Classify transaction', 
              style: TextStyle(
              fontSize: 20,
              fontWeight:FontWeight.bold,
              color: Colors.white
            ),),
            SizedBox( height: 10,),
            Text('Classify this transaction into a particular', 
              style: TextStyle(
              fontSize: 16,
              color: Colors.white
            ),),
            ],
        ),
      ),
    );
  }
}
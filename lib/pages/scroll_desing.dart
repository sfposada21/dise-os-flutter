import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
            Color.fromARGB(255, 132, 233, 192),
            Color(0xff30BAD6),
          ]) ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2(),
          ],
        ),
      )
   );
  }
}
class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontSize: 40, fontWeight:  FontWeight.bold, color: Colors.white);
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){}, 
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue[900],
            shape: const StadiumBorder()
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Welcome' , style: textStyle,),
          ))),
    );
  }
}

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  [
        BackgroungImage(),
        MainContent(),
      ],
    );
  }
}

class MainContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontSize: 60, fontWeight:  FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const SizedBox( height: 30,),
        Text('11°', style: textStyle,),
        Text('Miercoles', style: textStyle,),
        Expanded(child: Container()),
        const Icon( Icons.keyboard_arrow_down_outlined, size: 100, color: Colors.white,)
      ],),
    );
  }
}

class BackgroungImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll-1.png')));
  }
}
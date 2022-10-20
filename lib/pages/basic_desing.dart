import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
   
  const BasicDesingScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Image(image: AssetImage('assets/landScape1.png')),
          Tittle(),
          OptionsBottons(),
          TextParagraf(),
        ],
      ),
    );
  }
}

class TextParagraf extends StatelessWidget {
  const TextParagraf({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 30, vertical: 15),
      child: const Text('Sint tempor sunt et officia voluptate aliquip duis officia cillum aliqua cupidatat ex consequat. Sunt minim proident elit ut cillum occaecat id. Sint sit adipisicing dolor aliqua voluptate pariatur veniam anim deserunt. Nisi dolore nisi ex id exercitation mollit eu aliquip id pariatur culpa fugiat tempor deserunt. Est ad do sint esse eu adipisicing do excepteur commodo laborum dolore reprehenderit.',
      style: TextStyle(fontSize: 14),),
    );
  }
}

class OptionsBottons extends StatelessWidget {
  const OptionsBottons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 25, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ButtonStyle(icon: Icons.call, text: 'Call',),          
          ButtonStyle(icon: Icons.reply_outlined, text: 'Route',),  
          ButtonStyle(icon: Icons.share, text: 'Share',),  
         
        ],
      ),
    );
  }
}

class ButtonStyle extends StatelessWidget {

  final IconData icon;
  final String text;

  const ButtonStyle({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( icon, color: Colors.blue,),
        Text( text, style: const TextStyle( color: Colors.blue),),
      ],
    );
  }
}

class Tittle extends StatelessWidget {
  const Tittle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('primer diseño basico de flutter', 
              style: TextStyle( fontWeight: FontWeight.bold),),
              Text('subtitulo de diseño basico de flutter',
              style: TextStyle( color: Colors.black45),),
            ],
          ),
          Expanded(child: Container()),
          Icon( Icons.star, color: Colors.red,),
          Text('41'),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}

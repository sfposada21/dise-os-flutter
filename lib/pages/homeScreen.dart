import 'package:estilos/widgets/widgets.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Backgroud(),
          _ContentBody()
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
   );
  }
}

class _ContentBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTittleScreen(),
          CardTable()
        ],
      ),
    );
  }
}
import 'package:estilos/pages/pages.dart';
import 'package:flutter/material.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
      'basic'      : ( BuildContext context) =>  const BasicDesingScreen(),
      'scrollScreen'      : ( BuildContext context) =>  ScrollScreen(),      
      'home'      : ( BuildContext context) =>  HomeScreen()
      };
}
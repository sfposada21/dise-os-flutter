import 'package:estilos/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light);
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,       
    );
  }
}


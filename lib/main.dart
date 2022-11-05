import 'package:flutter/material.dart';
import 'package:my/screens/home_screen.dart';
import 'package:my/screens/update_screen.dart';

void main(){
  runApp(storeApp());
}

class storeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        homeScreen.routeName:(context)=>homeScreen(),
        updateScreen.routeName:(context) => updateScreen()
      },
      initialRoute: homeScreen.routeName,
    );
  }
}
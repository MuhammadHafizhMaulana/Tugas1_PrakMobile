import 'package:flutter/material.dart';
import 'package:tugas1/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: HomeScreen(),
    );
  }

}
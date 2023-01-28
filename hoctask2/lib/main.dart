import 'package:flutter/material.dart';
import 'package:hoctask2/home.dart';

void main(){
  runApp(const HocTask2());
}

class HocTask2 extends StatelessWidget {
  const HocTask2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "Oswald"
      ),
      home: const HomePage(),
    );
  }
}
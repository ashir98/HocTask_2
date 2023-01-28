import 'package:flutter/material.dart';

class RightSpeedoMeter extends StatelessWidget {
  const RightSpeedoMeter({super.key});

  @override
    Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2,
      width: size.width * 0.2,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.yellow,
              Colors.red,
            ]
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.yellow,
                offset: Offset(-5, 0),
                blurRadius: 5,
                spreadRadius: 3),
            BoxShadow(
                color: Colors.red,
                offset: Offset(5, 0),
                blurRadius: 5,
                spreadRadius: 3),
          ],
          
      ),

      child: const Center(
        child: Text("Rider off"),
      ),
    );
  }
}

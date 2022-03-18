import 'dart:math';

import 'package:flutter/material.dart';

class AnimateContainer extends StatefulWidget {
  const AnimateContainer({Key? key}) : super(key: key);

  @override
  _AnimateContainerState createState() => _AnimateContainerState();
}

class _AnimateContainerState extends State<AnimateContainer> {

  double width = 50;
  double height = 50;
  Color color = Colors.red;
  BorderRadiusGeometry borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: reformContainer,
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            width:  width,
            height: height,
            decoration: BoxDecoration(
              borderRadius:  borderRadius,
              color: color
            ),
          ),
        ),
      ),
    );
  }


  void  reformContainer(){
    final random  = Random();
    setState(() {
      width = random.nextInt(300).toDouble();
      height = random.nextInt(300).toDouble();
      color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    });
  }
}

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

  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: reformContainer,
        child: Container(
          padding:const EdgeInsets.only(top: 50),
          child: Center(
            child: Column(
              children: [
                paintSlider(),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  width:  width,
                  height: height,
                  decoration: BoxDecoration(
                    borderRadius:  borderRadius,
                    color: color
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget paintSlider() {
    return Slider(
      activeColor: Colors.blue,
      label: 'Variable',
      value: _valorSlider,
      min: 0,
      max: 400.0,
      onChanged: (value) {
        setState(() {
          _valorSlider = value;
          width = value;
          height = value;
        });
      },
    );
  }

  void  reformContainer(){
    final random  = Random();
    setState(() {
      color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    });
  }
}

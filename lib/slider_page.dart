import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  String asd = '';
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            paintSlider(),
            Center(
              child: Text(asd),
            ),
            Center(
              child: paintCheckBox(),
            ),
            Center(
              child: paintSwitch(),
            ),
            paintImage()
          ],
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
      onChanged: (isCheck) ? null : (value) {
        setState(() {
          asd = value.toString();
          _valorSlider = value;
          print(value);
        });
      },
    );
  }

  Widget paintCheckBox() {
    return CheckboxListTile(
        title: const Text('Este es mi checkbox'),
        value: isCheck,
        onChanged: (value) {
          setState(() {
            isCheck = value!;
          });
        });
  }

  Widget paintSwitch() {
    return SwitchListTile(
        title: const Text('Este es mi switch'),
        value: isCheck,
        onChanged: (value) {
          setState(() {
            isCheck = value;
          });
        });
  }

  Widget paintImage(){
    return Image(
      image: NetworkImage('http://pngimg.com/uploads/batman/batman_PNG111.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImatge(),
            ),
          ],
        ),
      ),
    );
  }
  double _valorSlider = 100.0;
  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigo,
      label: 'Grandària de la imatge',
      // divisions: 20,
      value: _valorSlider,
      min: 10,
      max: 400,
      onChanged: (_valorCheckBox) ? null : (valor) {
        setState(() {
          _valorSlider = valor;
        });
      }
    );
  }
  Widget _crearImatge() {
    return Image(
      image: NetworkImage('https://p.kindpng.com/picc/s/176-1766643_come-to-the-dart-side-flutter-custom-bottom.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
  bool _valorCheckBox = false;
  Widget _crearCheckBox() {
    return CheckboxListTile(
      title: Text('Bloquejar Slider'),
      value: _valorCheckBox, 
      onChanged: (estat) {
        setState(() {
          _valorCheckBox = estat!;
        });
      }
    );
  }
  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquejar Slider'),
      value: _valorCheckBox, 
      onChanged: (estat) {
        setState(() {
          _valorCheckBox = estat;
        });
      }
    );
  }
}
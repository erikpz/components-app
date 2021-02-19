import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100;
  bool _check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Slider'),
          backgroundColor: Color.fromRGBO(41, 50, 65, 1),
        ),
        body: Column(
          children: [
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            _crearImage()
          ],
        ));
  }

  Widget _crearSlider() {
    return Container(
      padding: EdgeInsets.only(top: 30.0),
      child: Slider(
          label: 'Slider',
          value: _valorSlider,
          min: 1,
          max: 500,
          onChanged: (_check)
              ? null
              : (valor) {
                  setState(() {
                    _valorSlider = valor;
                  });
                }),
    );
  }

  Widget _crearImage() {
    return Expanded(
        child: Image(
      width: _valorSlider,
      image: NetworkImage(
          'https://images.unsplash.com/photo-1613235577937-9ac3eed992fc?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1351&q=80.jpg'),
    ));
  }

  Widget _crearCheckbox() {
    return CheckboxListTile(
        title: Text('Habilitar slider'),
        value: _check,
        onChanged: (bul) {
          setState(() {
            _check = bul;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Habilitar slider'),
        value: _check,
        onChanged: (valor) {
          setState(() {
            _check = valor;
          });
        });
  }
}

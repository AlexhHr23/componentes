import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Slider y checks'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              Expanded(child: _crearImagen()),
            ],
          ),
        ));
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged: (valor) {
          setState(() {
            _valorSlider = valor;
            //print(valor);
          });
        });
  }

  _crearImagen() {
    return Image(
        image: NetworkImage(
            'https://th.bing.com/th/id/OIP.FZhoZl_JV6y4sbDcKgmO7AHaFj?pid=ImgDet&rs=1'),
        width: _valorSlider,
        fit: BoxFit.contain);
  }
}

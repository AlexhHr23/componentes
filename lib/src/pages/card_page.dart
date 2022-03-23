// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
              leading: Icon(
                Icons.photo_album,
                color: Colors.blue,
              ),
              title: Text('Titulo de la tarjeta'),
              subtitle: Text(
                  ' Aqui escribo in texot largo muy largo para mostrar el subtitulo')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://th.bing.com/th/id/R.684c798a125f3c647a9f110fd3ce555b?rik=NL8gfB4Z%2bOXjCQ&riu=http%3a%2f%2f1.bp.blogspot.com%2f-dOjiSo9tfkY%2fVjeyKzuTPnI%2fAAAAAAAAYyM%2fI6LfpiZYcL8%2fs320%2ftumblr_nx5uvxPC3x1shlg3vo4_540.gif&ehk=Ma6lzMebzFynLMtiyj81%2bpakq3Zf70ig%2brUtqq6xb%2f8%3d&risl=&pid=ImgRaw&r=0'),
            placeholder: AssetImage('assets/one-punch-man.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(padding: EdgeInsets.all(10.0), child: Text('One punch man'))
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        //color: Colors.red,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, -10.0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}

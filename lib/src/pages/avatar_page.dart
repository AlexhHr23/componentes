import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/tr/thumb/1/19/Edward_Elric.png/360px-Edward_Elric.png'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('GN'),
              backgroundColor: Colors.purple,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/tr/thumb/1/19/Edward_Elric.png/360px-Edward_Elric.png'),
          placeholder: AssetImage('assets/one-punch-man.gif'),
          fadeInDuration: Duration(milliseconds: 300),
        ),
      ),
    );
  }
}

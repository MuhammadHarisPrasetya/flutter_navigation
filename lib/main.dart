import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanPertama(),
    routes: <String, WidgetBuilder>{
      'HalamanPertama': (BuildContext) => new HalamanPertama(),
      'HalamanKedua': (BuildContext) => new HalamanKedua(),
    },
  ));
}
class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Speaker"),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.speaker,
            size: 50.0,
            color: Colors.red,
          ),
          onPressed: (){
            Navigator.pushNamed(context, '/HalamanKedua');
          },
        )
      )
    );
  }
}
class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Speaker"),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.speaker,
            size: 50.0,
            color: Colors.red,
          ),
          onPressed: (){
            Navigator.pushNamed(context, '/HalamanPertama');
          },
        )
      )
    );
  }
}
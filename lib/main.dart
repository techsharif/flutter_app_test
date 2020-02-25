import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('one'),
      ),
      body: Column(
        children: [
          Text("One text"),
          RaisedButton(
            child: Text("Button"),
            onPressed: null,
          ),
        ],
      ),
    ),);
  }
}

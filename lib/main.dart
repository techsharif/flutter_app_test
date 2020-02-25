import 'package:flutter/material.dart';

void main() => runApp(MyApp());

void buttonClick(){
  print("button clicked");
}

class MyApp extends StatelessWidget{

  @override
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
            onPressed: buttonClick,
          ),
      ]
      ),
    ),);
  }
}

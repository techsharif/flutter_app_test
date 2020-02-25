import 'package:flutter/material.dart';

void main() => runApp(MyApp());



class MyApp extends StatefulWidget{

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int dataIndex = 0;
  List<String> questions = [
    "one",
    "two"
  ];
  void buttonClick(){
    setState(() {
      dataIndex += 1;
    });

  }


  @override
  Widget build(BuildContext context){
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Column(
        children: [
          Text(questions.elementAt(dataIndex)),
          RaisedButton(
            child: Text("Button"),
            onPressed: buttonClick,
          ),
      ]
      ),
    ),);
  }
}

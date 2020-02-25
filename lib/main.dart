import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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

        new Builder(
            builder: (BuildContext context){
              return new RaisedButton(
                child: Text("Button"),
                onPressed: () => _showToast(context),
              );
            }
        ),
        ],
      ),
    ),);
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('WooW!!!!!'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}

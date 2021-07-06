import 'package:calculator_app/add.dart';
import 'package:calculator_app/div.dart';
import 'package:calculator_app/mul.dart';
import 'package:calculator_app/sub.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(App());
}
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.limeAccent,
        appBar: AppBar(
          title: Text("CALCULATOR APP"),
        ),
        body:  Div(),

      ),

    );



  }
}

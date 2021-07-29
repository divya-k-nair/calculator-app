import 'package:calculator_app/add.dart';
import 'package:calculator_app/div.dart';
import 'package:calculator_app/mul.dart';
import 'package:calculator_app/sub.dart';
import 'package:flutter/material.dart';

class Entry extends StatefulWidget {

  @override
  _EntryState createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  int _mycurrentIndex=0;
  List mypages=[Add(),Sub(),Mul(),Div()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,

        body: mypages[_mycurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          onTap: (index){
            setState(() {
              _mycurrentIndex=index;

            });
            print(index);

          },
          backgroundColor: Colors.lightGreen,
          currentIndex: _mycurrentIndex,

          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.tealAccent,
                icon: Icon(Icons.add,color:Colors.deepOrangeAccent,size: 20,),
              label: "ADD",

            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.lime,
                icon: Icon(Icons.minimize_outlined,color:Colors.deepOrangeAccent,size: 20,),
              label: "SUB",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.limeAccent,
                icon: Icon(Icons.ac_unit,color: Colors.deepOrangeAccent,size: 20,),
              label: "MUL",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.purpleAccent,
                icon: Icon(Icons.ac_unit,color: Colors.deepOrangeAccent,size: 20,),
              label: "DIV"
            ),
          ],//items
        ),
      ),
    );
  }
}


import 'package:calculator_app/add.dart';
import 'package:calculator_app/div.dart';
import 'package:calculator_app/mul.dart';
import 'package:calculator_app/sub.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),


                color: Colors.orange,
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Add()));

                },
                child: Text("ADD",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),

                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.lightGreen,
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Sub()));

                },
                child: Text("SUB",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.lightGreenAccent,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Mul()));

                },
                child: Text("MUL",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child:  RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.purpleAccent,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Div()));

                },
                child: Text("DIV",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            )
          ],//children
        ),
      ),
    );
  }
}

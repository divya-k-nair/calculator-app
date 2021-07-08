import 'package:calculator_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Add extends StatelessWidget {
 TextEditingController num1=TextEditingController() ;
 TextEditingController num2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.limeAccent,
          appBar: AppBar(
            title: Text("ADD"),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  TextField(
                    controller: num1,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.arrow_forward_ios,color: Colors.pink,size: 40,),
                      labelText: "Number 1",
                      hintText: "Number 1",
                      prefix: CircularProgressIndicator(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: num2,
                    decoration: InputDecoration(
                      labelText: "Number 2",
                      hintText: "Number 2",
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.arrow_forward_ios,color:Colors.pinkAccent ,size: 40,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child:RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.pinkAccent,
                      onPressed: (){
                        var getNumber1=int.parse(num1.text);
                        var getNumber2=int.parse(num2.text);
                        var getResult= getNumber1+ getNumber2;
                        print(getNumber1);
                        print(getNumber2);
                        print(getResult);

                      },
                      child: Text("ADD",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                    ),
                  ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child:RaisedButton(
                      color:Colors.pinkAccent ,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>App()));

                    },
                      child: Text("BACK TO HOME",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 25,
                        ),
                    ) ,
                  ),
                  ),
                ],//children
              ),
            ),
          )

      ),

    );


  }
}

import 'package:calculator_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sub extends StatefulWidget {
  @override
  _SubState createState() => _SubState();
}

class _SubState extends State<Sub> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  int _sub=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.limeAccent,
          appBar: AppBar(
            title: Text("SUBTRACTION"),
          ),
          body:SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  TextField(
                    controller: num1,
                    decoration: InputDecoration(
                      hintText: "Number 1",
                      labelText: "Number 1",
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.arrow_forward,color: Colors.purpleAccent,size: 40,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: num2,
                    decoration: InputDecoration(
                      hintText: "Number 2",
                      labelText: "Number 2",
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.arrow_forward,color: Colors.purpleAccent,size: 40,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.lightBlue,
                      onPressed: (){
                        var getNumber1=int.parse(num1.text);
                        var getNumber2=int.parse(num2.text);
                        print(getNumber1);
                        print(getNumber2);
                        setState(() {
                          _sub=getNumber1-getNumber2;
                        });
                        print(_sub);

                      },
                      child: Text("SUB",
                        style: TextStyle(
                          color:Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  Text(_sub.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),

                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.lightBlue,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>App()));

                      },
                      child: Text("BACK TO LOGIN",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
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


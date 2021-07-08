import 'package:calculator_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Div extends StatelessWidget {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.limeAccent,
          appBar: AppBar(
            title: Text("DIVISION"),
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
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.arrow_forward_ios,color: Colors.deepOrangeAccent,size: 40,),
                      hintText: "Number 1",
                      labelText: "Number 2",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: num2,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.arrow_forward_ios,color: Colors.deepOrangeAccent,size: 40,),
                      hintText: "Number 2",
                      labelText: "Number 2",
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
                      color: Colors.redAccent,
                      onPressed: (){
                        var getNumber1=int.parse(num1.text);
                        var getNumber2=int.parse(num2.text);
                        var getResult=getNumber1/getNumber2;
                        print(getNumber1);
                        print(getNumber2);
                        print(getResult);

                      },
                      child: Text("DIV",
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
                    child: RaisedButton(
                      color: Colors.redAccent,
                      onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>App()));

                    },
                     child: Text("BACK TO LOGIN",
                       style: TextStyle(
                         color: Colors.black87,
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

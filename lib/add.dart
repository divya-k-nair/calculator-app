import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Add extends StatelessWidget {
 TextEditingController num1=TextEditingController() ;
 TextEditingController num2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
                 color: Colors.red,
                 onPressed: (){
                   var getNumber1=int.parse(num1.text);
                   var getNumber2=int.parse(num2.text);
                   var getResult= getNumber1+ getNumber2;
                   print(getNumber1);
                   print(getNumber2);
                   print(getResult);

                 },
                 child: Text("ADD"),
               ),
           ),
          ],//children
        ),
      ),
    );
  }
}

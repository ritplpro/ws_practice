import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorUi extends StatefulWidget {
  const CalculatorUi({super.key});

  @override
  State<CalculatorUi> createState() => _CalculatorUiState();
}

class _CalculatorUiState extends State<CalculatorUi> {
  TextEditingController  value1=TextEditingController();
  TextEditingController  value2=TextEditingController();
  var opraterFlag=0;
  String result="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('calculator'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
                borderRadius: BorderRadius.circular(75),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset.zero,
                    blurRadius: 1.0,
                    blurStyle: BlurStyle.normal
                  )
                ]
              ),
              child: Center(
                child: Text(result,style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              controller: value1,
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(
                label:Text("Enter value 1"),
                hintText: '01234. .',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
              )
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              controller: value2,
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(
                  label:Text("Enter value 2"),
                  hintText: '01234. .',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                getcalculaterWidget(opraterText: "+", onTap: (){
                  opraterFlag=1;
                }),
                getcalculaterWidget(opraterText: "-", onTap: (){
                  opraterFlag=2;
                }),
                getcalculaterWidget(opraterText: "*", onTap: (){
                  opraterFlag=3;
                }),
                getcalculaterWidget(opraterText: "/", onTap: (){
                  opraterFlag=4;
                })

              ],
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                shape: RoundedRectangleBorder(),
              ),
                onPressed: (){
                setState(() {

                  if(value1.text.toString()!="" && value2.text.toString()!=""){
                    var no1=int.parse(value1.text);
                    var no2=int.parse(value2.text);

                    num sum=0;

                    if(opraterFlag==1){
                      sum=no1+no2;
                      result='$sum';

                  }else if(opraterFlag==2){
                      sum=no1-no2;
                      result='$sum';
                  } else if(opraterFlag==3){
                      sum=no1*no2;
                      result='$sum';
                  }else if(opraterFlag==4){
                      sum= no1/no2;
                      result='$sum';
                  }else{
                      result='please select oprator';
                  }

                  }else{
                    result='Please fill all required blanks';
                  }







                });}, child: Text('Calulate')),
            SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }

  Widget  getcalculaterWidget({required String opraterText,required void
  Function() onTap  }){
    return ElevatedButton(onPressed: onTap, child: Text(opraterText),
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(),
    ),);
  }



}

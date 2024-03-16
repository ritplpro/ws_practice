import 'package:flutter/material.dart';
import 'dart:core';

class TipCalculate extends StatefulWidget {
  const TipCalculate({super.key});

  @override
  State<TipCalculate> createState() => _TipCalculateState();
}

class _TipCalculateState extends State<TipCalculate> {
  var billcontroller=TextEditingController();
  var customcontroller=TextEditingController();
  var tipFlag=0;
  var result="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tip Calculater'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  borderRadius: BorderRadius.circular(125),
                ),
                child: Center(
                  child: Text('$result',style: TextStyle(fontSize: 45,
                      fontWeight: FontWeight.w900,color: Colors.green),),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Total with Tip',style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 22,
                    fontWeight: FontWeight.w700
                  ),),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height:60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(
                    color:Theme.of(context).colorScheme.primary,
                  )),
                child: Center(
                  child: Text('\₹$result',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primary
                  ),),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Bill total',style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.primary,
                  ),),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                controller: billcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "\₹0.00",
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  )
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Tip Percentage',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primary,
                  ),),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                      color:Theme.of(context).colorScheme.inversePrimary,
                      boxShadow:[
                        BoxShadow(
                          color:Theme.of(context).colorScheme.inversePrimary,
                          blurRadius: 1.0,
                          spreadRadius: 0.5,
                        )
                      ],
                        borderRadius: BorderRadius.circular(2),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1,
                      )
                    ),
                    child: Center(child: tipPercentage(tipText: "10%",onclick:
                        (){
                      tipFlag=1;
                        }))
                  ),
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        boxShadow:[
                          BoxShadow(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            blurRadius: 1.0,
                            spreadRadius: 0.5,
                          )
                        ],
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1,
                        )
                    ),
                    child: Center(child: tipPercentage(tipText: "15%",
                        onclick: (){
                      tipFlag=2;
                        }))
                  ),
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        boxShadow:[
                          BoxShadow(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            blurRadius: 1.0,
                            spreadRadius: 0.5,
                          )
                        ],
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1,
                        )
                    ),
                    child: Center(child: tipPercentage(tipText: "20%",
                        onclick: (){
                      tipFlag=3;
                        }))
                  ),
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        boxShadow:[
                          BoxShadow(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            blurRadius: 1.0,
                            spreadRadius: 0.5,
                          )
                        ],
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1,
                        )
                    ),
                    child: Center(child: tipPercentage(tipText: "25%",onclick: (){
                      tipFlag=4;
                    }))
                  ),

                ],
              ),
              SizedBox(height: 10),
              TextField(
                controller: customcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "\₹Custom tip",
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    )
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    elevation: 4,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                      fixedSize: Size(400, 60)
                  ),
                  onPressed: (){
                    setState(() {

                      if(billcontroller.text !="" && customcontroller.text
                          !=""){
                            num billtotal=double.parse(billcontroller.text);
                           if(tipFlag==1){
                           var   tips=billtotal+(billtotal*0.10);
                              result='$tips';
                            }else if(tipFlag==2){
                              var   tips=billtotal+(billtotal*0.15);
                              result='$tips';

                            }else if(tipFlag==3){
                              var   tips=billtotal+(billtotal*0.20);
                              result='$tips';

                            }else if(tipFlag==4){
                              var   tips=billtotal+(billtotal*0.25);
                              result='$tips';
                            }else{
                              var tips=billtotal;
                              result="$tips";
                              //result="$billtotal";
                            }
                          }else if(customcontroller.text!=""){
                            var tips=billcontroller.text+customcontroller.text;
                            result="$tips";
                          }else{
                          result="please Enter bill amount ";
                          }










                    });
                  }, child: Text('Calculate')),

            ],
          ),
        ),
      ),
    );
  }

  Widget tipPercentage({required String tipText,required void Function() onclick
  }){
    return InkWell(child:Text(tipText),onTap: onclick,);
  }



}

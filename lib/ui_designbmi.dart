import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class MyBmiapp extends StatefulWidget {
  const MyBmiapp({super.key});


  @override
  State<MyBmiapp> createState() => _MyBmiappState();
}

class _MyBmiappState extends State<MyBmiapp> {
  TextEditingController  userage=TextEditingController();
  TextEditingController  userheightinfeet=TextEditingController();
  TextEditingController  userweight=TextEditingController();
String result="";
var genderFlag=0;
String gender="";
  var age="";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('BMI app'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  color: Colors.blue.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text('you are $gender and your Age '
                        'is $age and '
                        'BMI is  '
                        '$result ',style: TextStyle(fontSize: 21,fontWeight:
                    FontWeight.w500),)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Healthy',style: TextStyle(fontSize: 30,fontWeight:
              FontWeight.bold),)
            ],
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('Male',style: TextStyle(fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){
                    genderFlag=1;
                  }, icon: Icon(Icons.male,size: 60,
                      color: Colors.blue,)),
                ],
              ),
              Column(
                children: [
                  Text('Female',style: TextStyle(fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){
                    genderFlag=2;
                  }, icon: Icon(Icons.female,size:
                  60,color: Colors.pink,)),
                ],
              ),


            ],

          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Age',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Container(height: 30,
                    width: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      autofocus: true,
                      controller: userage,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Height",style: TextStyle(fontWeight:
    FontWeight.bold),)),
                  Container(height: 30,
                    width: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      autofocus: true,
                      controller: userheightinfeet,
                    ),
                  )
                ],
              ),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Weight',style: TextStyle(fontWeight:
                    FontWeight.bold),),
                  ),
                  Container(
                    height: 30,
                    width: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      autofocus: true,
                      controller: userweight,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 40,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(400, 50),
              ),
          onPressed: (){
                setState(() {

                  if(userage.text.toString()!="" && userheightinfeet.text
                      .toString()!="" && userweight.text.toString()!=""){

                    var age=int.parse(userage.text.toString());
                  num height=double.parse(userheightinfeet.text);
                  num weight=double.parse(userweight.text);


               var   height1=height*12;
               var height2=height1*2.54;
               var  bmii=height2/100;
               var bmi=weight/(bmii*bmii);


                    if(bmi >= 18.5 && bmi <= 25){
                      result="${bmi.toStringAsFixed(2)} you are Normal";
                    } else if(bmi > 25 && bmi <= 30){
                      result="${bmi.toStringAsFixed(2)} you are Overweight";
                    } else if(bmi > 30){
                      result="${bmi.toStringAsFixed(2)} you are Obesity";
                    } else  {
                      result="${bmi.toStringAsFixed(2)} you are Underweight";
                    }

                  if(genderFlag==1){
                    gender="Male";
                  }else if(genderFlag==2){
                    gender="Female";

                  }else{
                    gender="Please slect your gender";
                  }


                  }else{
                    result="please fill the all required blanks";

                  }



                });

          }, child: Text('Calculate BMI')),

        ],
      ),
    );
  }
}

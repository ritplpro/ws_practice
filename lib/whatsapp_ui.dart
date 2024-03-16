import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:core';

import 'package:ws_practice/WhatsApp_chatScreen.dart';

class WhatsAppui extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    List<Map<String,dynamic>> nameList=[
      {
        "name":"Mahesh",
        'Lastmsg':"hello",
        'image':"https://www.moople.in/blog/wp-content/uploads/2018/02/New-Project-99.jpg",
        "time":"11:10",
        "unread":'8',
      },
      {
        "name":"Nani",
        'Lastmsg':"hello",
        'image':"https://www.moople.in/blog/wp-content/uploads/2018/02/New-Project-99.jpg",
        "time":"4:17",
        "unread":'',
      },
      {
        "name":"Yogesh",
        'Lastmsg':"hello",
        'image':"https://www.moople.in/blog/wp-content/uploads/2018/02/New-Project-99.jpg",
        "time":"1:10",
        "unread":'6',
      },
      {
        "name":"Ritesh",
        'Lastmsg':"hello",
        'image':"https://www.moople.in/blog/wp-content/uploads/2018/02/New-Project-99.jpg",
        "time":"1:10",
        "unread":'6',
      },
      {
        "name":"Sana",
        'Lastmsg':"hello",
        'image':"https://www.moople.in/blog/wp-content/uploads/2018/02/New-Project-99.jpg",
        "time":"3:20",
        "unread":'12',
      },
      {
        "name":"Manan",
        'Lastmsg':"hello",
        'image':"https://www.moople.in/blog/wp-content/uploads/2018/02/New-Project-99.jpg",
        "time":"12:30",
        "unread":'5',
      },
      ];

    return Scaffold(
      appBar: AppBar(
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('WhatsApp',style: TextStyle(
              fontWeight: FontWeight.w600
            ),),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                IconButton(onPressed: (){}, icon: Icon(Icons.dehaze)),
              ],
            ),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount:nameList.length,
          itemBuilder: (context,index){
            return ListTile(
              leading:CircleAvatar(

                backgroundImage: NetworkImage(nameList[index]['image']),
              ) ,
              title:Text(nameList[index]["name"]),
              subtitle:Text(nameList[index]['Lastmsg']),
              trailing: Column(
                children: [
                  Container(
                    height:25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      shape: BoxShape.circle
                    ),
                    child: Center(child: Text(nameList[index]['unread'])),
                  ),
                  Text(nameList[index]['time']),

                ],
              ),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)
                =>ChatScreen()));
              },
            );
          }),
    );
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViews extends StatelessWidget {
  const GridViews({super.key});



  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> listgrid=[
      {'name':'Mahesh','work':"yes",'color':Colors.red},
      {'name':'sapna','work':"yes",'color':Colors.green},
      {'name':'yogesh','work':"no",'color':Colors.yellow},
      {'name':'harish','work':"no",'color':Colors.pink},
      {'name':'davinder','work':"no",'color':Colors.orange},
      {'name':'suresh','work':"yes",'color':Colors.blue},
      {'name':'raman','work':"yes",'color':Colors.grey},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing:5.0 ,
          crossAxisSpacing: 5.0,
          childAspectRatio:1/2 ,
          crossAxisCount: 2
        ),
            itemCount:listgrid.length,
            itemBuilder: (context,
            index){
          return Container(
            color: listgrid[index]['color'],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(listgrid[index]['name']),
                Text(listgrid[index]['work']),
              ],
            ),);
        }),
      ),
    );
  }
}

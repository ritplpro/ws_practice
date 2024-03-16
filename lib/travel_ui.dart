import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class TravelUi extends StatelessWidget {
  const TravelUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/google.png'),
                backgroundColor: Colors.transparent,
              ),
            SizedBox(width: 10),
            Text('Hi jessica'),
              SizedBox(width: 110),
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.location_on),

                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8.0),
                      height: 250,
                      width: 410,
                      color: Theme.of(context).colorScheme.inversePrimary),
                    Container(
                      margin: EdgeInsets.only(right: 8.0),
                      height: 250,
                      width: 410,
                      color: Theme.of(context).colorScheme.inversePrimary),
                    Container(
                      margin: EdgeInsets.only(right: 8.0),
                      height: 250,
                      width: 410,
                      color: Theme.of(context).colorScheme.inversePrimary),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 1.0,
                              color: Theme.of(context).colorScheme.inversePrimary,
                              blurRadius: 2.0,
                              blurStyle: BlurStyle.normal,
                            )
                          ],
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(
                            width: 2,
                            color: Theme.of(context).colorScheme.inversePrimary),

                          ),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.connected_tv)),
                      ),
                      Text('Trips'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 1.0,
                              color: Theme.of(context).colorScheme.inversePrimary,
                              blurRadius: 2.0,
                              blurStyle: BlurStyle.normal,
                            )
                          ],
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(
                              width: 2,
                              color: Theme.of(context).colorScheme.inversePrimary),

                        ),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.accessibility_new_rounded)),
                      ),
                      Text('Tour Guide'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 1.0,
                              color: Theme.of(context).colorScheme.inversePrimary,
                              blurRadius: 2.0,
                              blurStyle: BlurStyle.normal,
                            )
                          ],
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(
                              width: 2,
                              color: Theme.of(context).colorScheme.inversePrimary),

                        ),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.car_crash_rounded)),
                      ),
                      Text('Car Rental'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 1.0,
                              color: Theme.of(context).colorScheme.inversePrimary,
                              blurRadius: 2.0,
                              blurStyle: BlurStyle.normal,
                            )
                          ],
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(
                              width: 2,
                              color: Theme.of(context).colorScheme.inversePrimary),

                        ),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons
                            .business_rounded)),
                      ),
                      Text('Hotels'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 1.0,
                              color: Theme.of(context).colorScheme.inversePrimary,
                              blurRadius: 2.0,
                              blurStyle: BlurStyle.normal,
                            )
                          ],
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(
                              width: 2,
                              color: Theme.of(context).colorScheme.inversePrimary),

                        ),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons
                            .border_all_outlined)),
                      ),
                      Text('All'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Top Tip'),
                ],
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 270,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(2),
                    border: Border.all(
                      width: 1
                    )
                  ),
                  
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 500,
                              height: 150,
                              color:Theme.of(context).colorScheme.inversePrimary,),
                            Padding(
                              padding: const EdgeInsets.only(right: 320.0),
                              child: Row(
                                children: [
                                  Text('Indonesia'),
                                  Icon(Icons.star),
                                  Text('4.7'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 320.0),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on_rounded),
                                ],
                              ),
                            ),




                          ],
                        ),



                      ],
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

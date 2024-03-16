import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('home'),
        backgroundColor:Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 500,
          height: 500,

          child: Row(
            children: [
              Container(
                width: 200,
                height: 400,
                color: Colors.greenAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 170,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                          color: Colors.black54,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.0,vertical: 2.0),
                        child: Center(child: Text('Mahesh kumar ')),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                          color: Colors.black54,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Delhi as a district legal entity was recognised by the Proclamation Notification ')),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                          color: Colors.black54,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star,size: 12,),
                              Icon(Icons.star,size: 12,),
                              Icon(Icons.star,size: 12,),
                              Icon(Icons.star,size: 12,),
                              Icon(Icons.star,size: 12,),

                            ],
                          ),
                          Text('170 Reviews'),
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                          color: Colors.black54,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.add_business_rounded),
                              Text('Preps'),
                              Text('1 hr '),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.timer),
                              Text('cook'),
                              Text('45 sec '),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.home_outlined),
                              Text('Feeds'),
                              Text('33 min '),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 210,
                height: 400,
                color: Colors.cyan,
                child: Image.asset('assets/images/photos.jpg',fit: BoxFit.fill,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email=TextEditingController();
    TextEditingController password=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Row(
                children: [
                  Text('Create your account',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              TextField(
                controller: email,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label:Text(' Email '),
                  prefix: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(Icons.email_outlined),
                  ),
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )

                  ),
                ),
              SizedBox(height: 30,),
              TextField(
                controller: password,
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    label:Text('Password '),
                    suffix:InkWell(child: Icon(Icons.remove_red_eye)),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )

                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  TextButton(
                      style:TextButton.styleFrom(
                        alignment: Alignment.centerLeft,
                      ),
                      onPressed: (){}, child: Text('forgot password ?')),
                ],
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(180.0,45.0),
                  elevation: 2.0,

                ),

                  onPressed: (){}, child: Text('Login')),
              SizedBox(height: 20,),
                Row(children: [
                  Expanded(
                    child:Container(
                        margin:
                        const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Divider(
                          height: 36,
                        )),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(
                    ),
                  ),
                  Expanded(
                    child:Container(
                        margin:
                        const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Divider(
                          height: 36,
                        )),
                  ),
                ]),
              SizedBox(height: 20,),
              OutlinedButton(
                  style:ElevatedButton.styleFrom(
                    fixedSize: Size(250.0, 45.0),),
                  onPressed: () {

                  }, child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height:25,
                    child: Image.asset("assets/images/google.png"),),
                  SizedBox(width: 25,),
                  Text('Continue with Google'),

                ],
              )),
              SizedBox(height: 30,),
              OutlinedButton(
                  style:ElevatedButton.styleFrom(
                    fixedSize: Size(250.0, 45.0),
                  ),
              onPressed: () {

              }, child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height:30,
                    child: Image.asset("assets/images/apple-logo.png"),),
                  SizedBox(width: 30,),
                  Text('Continue with Apple'),

                ],
              )),


            ],
          ),
        ),
      ),
    );

  }
}

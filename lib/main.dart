import 'package:flutter/material.dart';
import 'package:ws_practice/calculator_uistf.dart';
import 'package:ws_practice/gridveiw.ui.dart';
import 'package:ws_practice/tip_ui.dart';
import 'package:ws_practice/travel_ui.dart';
import 'package:ws_practice/ui_designbmi.dart';
import 'package:ws_practice/whatsapp_ui.dart';
import 'homepage.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: "ws class",
       theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
         useMaterial3: true,
       ),
       home: WhatsAppui(),
     );
   }
}
 
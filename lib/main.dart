import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/Connter_Screen.dart';


void main() {
   runApp(MyApp());
}
 
 class MyApp extends StatelessWidget{
   @override
   Widget build(BuildContext context){
     return MaterialApp(
       home: CounterScreen(),
       debugShowCheckedModeBanner: false,    
     );
   }
 }


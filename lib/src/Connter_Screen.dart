import'package:flutter/material.dart';
class CounterScreen extends StatefulWidget{
   @override
_CounterScreenState createState()=> _CounterScreenState();
}
class _CounterScreenState extends State<CounterScreen>{
  final estilo = TextStyle(fontSize: 30.0);
  var cnt =0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar:AppBar(
       title: Text('hola mundo'),
       centerTitle: false,
       ),
      body: Center(
child:Column(
   children:[
    Text(
       'contador',
      style: estilo,
      ),
      Text(
           '$cnt',
           style: estilo,
        )
        ],
      mainAxisAlignment: MainAxisAlignment.center,
      )),
     floatingActionButton: _fab(),
       );
     }
Widget _fab(){
   return Row(
    children: [
       SizedBox(width: 25.0,),
FloatingActionButton(
     onPressed:(){
       setState((){
         cnt=0;
         print("RESETEO $cnt");
        });
        },
        child:Icon(Icons.exposure_zero),
        ),
Expanded(child: SizedBox(width: 5.0,),),
FloatingActionButton(
     onPressed:(){
       setState((){
         cnt--;
         print("Decremento $cnt");
        });
        },
        child:Icon(Icons.remove),
        ),
        SizedBox(width: 5.0,),
FloatingActionButton(
     onPressed:(){
       setState((){
         cnt++;
         print("Incremento $cnt");
        });
        },
        child:Icon(Icons.add),
        ),
],
  mainAxisAlignment: MainAxisAlignment.end,
);
}
}
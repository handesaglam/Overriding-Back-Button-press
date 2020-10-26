import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: (){

return showDialog(context: context,


builder: (context)=>AlertDialog(

  title: Text("warning"),

  content: Text("are you to exit"),


  actions: <Widget>[


FlatButton(onPressed: (){

  Navigator.of(context).pop(true);


}, child: Text(
  "yes"

)),

    FlatButton(onPressed: (){

      Navigator.of(context).pop(false);


    }, child: Text(
        "hayır"

    )),



  ],






),









);




      }
      ,

    child: Scaffold(

      backgroundColor: Colors.red,

      body: Center(
        child: Text("ssss",
          style: TextStyle(
            color: Colors.white



          ),






        ),







      ),






    ),


    );





      // This trailing comma makes auto-formatting nicer for build methods.

  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizEnd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("GG",
            textAlign: TextAlign.center,
            style: TextStyle(
              color:Colors.green,
              fontSize: 35.0,
            ),
            ),
            Column(children: [
              Icon(CupertinoIcons.heart,color: Colors.red,size: 40.0,),


            ],)
          ],
        ),
      ),
    ),
    );
  }
}
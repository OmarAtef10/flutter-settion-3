import 'package:flutter/material.dart';

import 'QuestionScreen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
    backgroundColor: Colors.black,

    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Welcome to Vodafone",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
            fontSize: 69,
          ),
          ),
          MaterialButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen(0),

            )
            );
          },
            child: Container(
              width: 200.0,
              height: 80,
              child: Center(
                child: Text(
                  'Start',
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ],
      ),
    ),
    )
    );
  }
}

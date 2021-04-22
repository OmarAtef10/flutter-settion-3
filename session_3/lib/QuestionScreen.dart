import 'package:flutter/material.dart';
import 'package:session_3/Home.dart';
import 'package:session_3/QuizEnd.dart';
import 'Questions/Quiz.dart';

class QuestionScreen extends StatefulWidget {
   int index=0;
  QuestionScreen(this.index);

  @override
  _State createState() => _State();
}

class _State extends State<QuestionScreen> {
  Quiz myQuiz = Quiz();
  bool isCorrect = false;
  bool isWrong = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              myQuiz.quiz[widget.index].question,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
              ),
            ),
            Visibility(
              child: Icon(
                Icons.check,
                color: Colors.green,
                size: 50.0,
              ),
              visible: isCorrect,
              replacement: Visibility(
                child: Icon(
                  Icons.clear,
                  color: Colors.red,
                  size: 50.0,
                ),
                visible: isWrong,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: (){
                    if (myQuiz.quiz[widget.index].answer == true)
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                      });
                    else setState(() {
                      isCorrect = false;
                      isWrong = true;
                    });
                  },
                  child: Container(
                    width: 150.0,
                    height: 70.0,
                    child: Center(
                      child: Text(
                        'True',
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: (){
                    if (myQuiz.quiz[widget.index].answer == false)
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                      });
                    else setState(() {
                      isCorrect = false;
                      isWrong = true;
                    });
                  },
                  child: Container(
                    width: 150.0,
                    height: 70.0,
                    child: Center(
                      child: Text(
                        'False',
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ],
            ),
            MaterialButton(

              onPressed: () {

              if(widget.index+1<Quiz().quiz.length){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionScreen(widget.index+1),
                  ),

                );
              }
              else{
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizEnd(),
                  ),

                );
              }

                  }

                 ,
              child: Container(
                width: 250.0,
                height: 70.0,
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



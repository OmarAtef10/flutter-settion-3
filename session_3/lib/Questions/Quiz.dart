import 'Question.dart';

class Quiz{

   final int _counter = 2;


   int get counter => _counter;

  List<Question> quiz =[
    Question("ehna el alb ely tayer ?",true ),
    Question("mtsh3bat fl 7yah ?",false),

  ];
}
import 'package:flutter/material.dart';

import '../ui/AnswerButton.dart';
import '../ui/QuestionText.dart';

import '../utils/Quiz.dart';
import '../utils/Question.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  Question currentQuestion;
  Quiz quiz= new Quiz([
    Question('Elon Musk is owner of Tesla',true),
    Question("Consistency is the key",true),
    Question("Flutter is amazing",true),
    Question("Is it FLutter to be an success",false),
    Question("Is android better than ios",false),
    Question("Is Ios better than android",false),
    Question("This is an quiz app",true),
  ]);

  String questionText;
  double score=0;

  @override 
  void initState() {
    super.initState();
    currentQuestion=quiz.nextQuestion;
    questionText=currentQuestion.question;
  }

  void handleClick(bool ans){
    if(ans==currentQuestion.answer){
      quiz.addScore();
    }else{
      quiz.loseScore();
    }
    currentQuestion= quiz.nextQuestion ;
     if(currentQuestion == null ){
      currentQuestion=Question("Quiz Over", true);
     }
    this.setState((){
      questionText=currentQuestion.question;
      score=quiz.getScore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnswerButton(true,()=>handleClick(true)),
            QuestionText(questionText),
            AnswerButton(false,()=>handleClick(false)),
            Container(
              child: Text("Score : "+this.score.toString(),style: TextStyle(fontSize: 15),),
            )
          ],
        ),
      )
    );
  }
}

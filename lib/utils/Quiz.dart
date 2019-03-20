import './Question.dart';

class Quiz{

  final List<Question> _questions;
  int _currentQuestionIndex=-1;
  double _score=0;

  Quiz(this._questions);

  double get getScore => _score;
  int get quizLength => _questions.length;

  void nextIndex(){
    this._currentQuestionIndex=_currentQuestionIndex+1;
  }

  Question get nextQuestion{
    if(this._currentQuestionIndex >=quizLength){
      return null;
    }else{
      nextIndex();
      return _questions[_currentQuestionIndex];
    }
  }

  void addScore(){
    this._score++;
  }

  void loseScore(){
    this._score=this._score-0.5;
  }


}
import 'package:quizapp/question.dart';

class QuestionLogic{
  int _questionNumber=0;

  List<Question> _questionList=[
    Question('Eat Using Your Right Hand', true),
    Question('Praying To Statues Is Wrong', true),
    Question('An-Nas Is The 113th Surah In Al-Quran', false),
    Question('Beer Is Haram', true),
    Question('Wine Is Halal', false),
    Question('Sugar Can Cause Diabetes', true),
    Question('Eating To Much Eggs Can Make You Short', false),
    Question('Yin And Yang Is Red And Blue', false),
    Question('Dadao Is From Chinese', true),
    Question('Odachi Is Shorter Than Katana', false)
  ];

  String getQuestion()=> _questionList[_questionNumber].question;

  int getQuestionNumberText()=>_questionNumber + 1;

  int getTotalQuestion()=>_questionList.length;

  bool getCorrectAnswer()=>_questionList[_questionNumber].answer;

  void nextQuestion(){
    if (_questionNumber<_questionList.length - 1){
      _questionNumber++;
      print(_questionNumber);
    }
  }

  bool isFinished(){
    if (_questionNumber >=_questionList.length - 1){
      return true;
    }else{
      return false;
    }
  }

  void resetQuestion()=> _questionNumber = 0;
}
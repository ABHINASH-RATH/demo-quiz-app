import 'questions.dart';

class QuestionBank {
  int questionNumber = 0;

  List<Questions> _questionBank = [
    Questions('Im good', true),
    Questions('Im mad', false),
    Questions('cow has 2 heads ', false),
  ];
  void nextQuestion() {
    if (questionNumber < _questionBank.length - 1) {
      questionNumber++;
    }
  }

  String getQuestions() {
    return _questionBank[questionNumber].questions;
  }

  bool getAnswer() {
    return _questionBank[questionNumber].answers;
  }

  bool isFinished() {
    if (questionNumber >= _questionBank.length - 1) {
      return true;
    }
    return false;
  }

  void reset() {
    questionNumber = 0;
  }
}

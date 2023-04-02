import 'dart:io';

class Quiz {
  List<String> _questions;
  List<String> _answers;
  int _score = 0;
// constructor
  Quiz(this._questions, this._answers) {
    int _score = 0;
  }
// a function that use to start the quiz
  void startQuiz() {
    for (int i = 0; i < _questions.length; i++) {
      print("Question ${i + 1}: ${_questions[i]}");
      // ask user to input the answer
      String userAnswer = stdin.readLineSync()!;
      if (userAnswer == _answers[i]) {
        print("Correct!");
        _score++;
      } else {
        print("Incorrect!");
      }
    }
    print("Quiz complete. Your score is $_score out of ${_questions.length}.");
  }
}

void main() {
  List<String> questions = [
    "What is the capital city of Ethiopia?",
    "What is the currency of Japan?"
  ];

  List<String> answers = ["addis ababa", "yen"];

  Quiz quiz = Quiz(questions, answers);
  quiz.startQuiz();
}

import'question.dart';
//here the question.dart is imported, because we use the Question class in the list below.
class QuizBrain {

//here we made the questionNumber private by this _ sign.it could accessed only by QuizBrain  and public methods.
  int _questionNumber= 0;

//here we took this list from main.dart, and made it private with _ sign '_questionBank'.
  final List<Question> _questionBank= [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

// nextQuestion method is used to pass to the next question until 13th question when the button is pressed.
void nextQuestion(){
  if (_questionNumber<_questionBank.length-1) {
    _questionNumber++;
  }
}
//getQuestionText method is used to find out the text of the question.
String getQuestionText() {
  return _questionBank[_questionNumber].text;
}
//getCorrectAnswer method is used to find out the answer of the question.
bool getCorrectAnswer() {
  return _questionBank[_questionNumber].answer;
}

// isFinished method is used to check if we have reached the last question, It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.
  bool isFinished() {
    if (_questionNumber >= _questionBank.length -1) {

    // Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.
      print('now returning true');
      return true;
    } else{
      return false;
    }
  }
//a reset() method here that sets the questionNumber back to 0.
  void reset(){
    _questionNumber=0;
  }

}


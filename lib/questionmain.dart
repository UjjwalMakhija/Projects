import 'package:flutter/material.dart';
import 'package:pbl_project/image.dart';
import './onBoard.dart';
// import './question.dart';
// import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main() => runApp(
//     MyApp()); //More convinent way of defining the function these is valid with only one expression

class Ques extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    // TODO: implement
    return _QuesState();
  }
}

class _QuesState extends State<Ques> {
  // final color
  final _question = const [
    {
      'questiontext':
          ' 1. In the last month, how often have you felt nervous and stressed? ',
      'answers': [
        {'text': ' never', 'score': 0},
        {'text': 'almost never', 'score': 1},
        {'text': 'sometimes', 'score': 2},
        {'text': 'fairly often', 'score': 3},
        {'text': 'very often', 'score': 4},
      ],
    },
    {
      'questiontext':
          ' 2. In the last month, how often have you been upset because of something that happened unexpectedly? ',
      'answers': [
        {'text': ' never', 'score': 0},
        {'text': 'almost never', 'score': 1},
        {'text': 'sometimes', 'score': 2},
        {'text': 'fairly often', 'score': 3},
        {'text': 'very often', 'score': 4},
      ],
    },
    {
      'questiontext':
          '3. In the last month, how often have you felt confident about your ability to handle your personal problems? ',
      'answers': [
        {'text': ' never', 'score': 0},
        {'text': 'almost never', 'score': 1},
        {'text': 'sometimes', 'score': 2},
        {'text': 'fairly often', 'score': 3},
        {'text': 'very often', 'score': 4},
      ],
    },
    {
      'questiontext':
          '4. In the last month, how often have you felt that things were going your way?',
      'answers': [
        {'text': ' never', 'score': 0},
        {'text': 'almost never', 'score': 1},
        {'text': 'sometimes', 'score': 2},
        {'text': 'fairly often', 'score': 3},
        {'text': 'very often', 'score': 4},
      ],
    },
    {
      'questiontext':
          ' 5. In the last month, how often have you been able to control irritations inyour life? ',
      'answers': [
        {'text': ' never', 'score': 0},
        {'text': 'almost never', 'score': 1},
        {'text': 'sometimes', 'score': 2},
        {'text': 'fairly often', 'score': 3},
        {'text': 'very often', 'score': 4},
      ],
    },
    {
      'questiontext':
          '6. In the last month, how often have you felt that you were on top of things?',
      'answers': [
        {'text': ' never', 'score': 0},
        {'text': 'almost never', 'score': 1},
        {'text': 'sometimes', 'score': 2},
        {'text': 'fairly often', 'score': 3},
        {'text': 'very often', 'score': 4},
      ],
    },
    {
      'questiontext':
          '7. In the last month, how often have you felt difficulties were piling up so high thatyou could not overcome them?',
      'answers': [
        {'text': ' never', 'score': 0},
        {'text': 'almost never', 'score': 1},
        {'text': 'sometimes', 'score': 2},
        {'text': 'fairly often', 'score': 3},
        {'text': 'very often', 'score': 4},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex +
          1; // It tells the editor that the state need to be changed because in flutter it must be defined that state is changed
    });
    print(_questionIndex);
    if (_questionIndex < _question.length) {
      print("We have more questions !!!!!11");
    } else {
      print("No more question !!!!");
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return  Padding(
         padding: const EdgeInsets.only(
          top: 30,
        ),
        
            child: Stack(children: [ 
               Container(
            decoration: BoxDecoration(
              border:  Border.all(color:Color.fromARGB(255, 16, 22, 20)),
              color: const Color.fromARGB(255, 20, 19, 19),
            ),
        ),
         Scaffold(
          backgroundColor:Color.fromARGB(255, 241, 243, 243),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(131, 58, 180, 1),
              Color.fromRGBO(253, 29, 29, 0.6),
              Color.fromRGBO(252, 176, 69, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight
            )
          ),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(1),
        // width: double.infinity,
        // height: double.infinity,
        // decoration: BoxDecoration(
        //     image: DecorationImage(image: AssetImage("images/Questions1.jpg"),fit:BoxFit.cover)),
        child:
            // 121
            _questionIndex < _question.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    question: _question,
                  )
                : Result(resultScore:_totalScore, reseQuiz:_resetQuiz),
      ),
    )
    ]),
        
        
       // OnboardScreen(),
          
    );
  
  }
}

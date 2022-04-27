import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(const QuizzlerApp());
}

class QuizzlerApp extends StatelessWidget {
  const QuizzlerApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuizzlerPage(),
    );
  }
}

class QuizzlerPage extends StatefulWidget {
  const QuizzlerPage({Key? key}) : super(key: key);

  @override
  State<QuizzlerPage> createState() => _QuizzlerPageState();
}

class _QuizzlerPageState extends State<QuizzlerPage> {
  List<Icon> scoreKeeper = [];

  Icon trueButton = const Icon(
    Icons.check,
    color: Colors.green,
  );
  Icon falseButton = const Icon(
    Icons.close,
    color: Colors.red,
  );

  List<String> questions = [
    "What's the sense of the life'",
    'Programing is good',
    'A slug\'s blood is green', //true
    'You can lead a cow down stairs but not up stairs',
    'Approximately one quarter of human bones are in the feet',
    '',
    '',
    '',
    '',
  ];

  Question q1 = Question('What\'s the sense of the life', false);

  List<Question> questionsList = [
    Question('What\'s the sense of the life', false),
    Question('Programing is good', true),
    Question('A slug\'s blood is green', true),
    Question('You can lead a cow down stairs but not up stairs', false),
    Question('Approximately one quarter of human bones are in the feet', false)
  ];

  List<bool> answers = [false, true, true, false, false];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  questionsList[questionNumber].questionText,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  bool answer = questionsList[questionNumber].questionAnswer;
                  if (answer == true) {
                    setState(() {
                      scoreKeeper.add(trueButton);
                    });
                  } else {
                    setState(() {
                      scoreKeeper.add(falseButton);
                    });
                  }
                  setState(() {
                    questionNumber++;
                  });
                },
                child: const Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  bool answer = questionsList[questionNumber].questionAnswer;
                  if (answer == false) {
                    setState(() {
                      scoreKeeper.add(trueButton);
                    });
                  } else {
                    scoreKeeper.add(falseButton);
                  }
                  setState(() {
                    questionNumber++;
                  });
                },
                child: const Text(
                  'False',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Row(children: scoreKeeper),
        ],
      ),
    );
  }
}

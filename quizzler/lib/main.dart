import 'package:flutter/material.dart';
import 'quiz.dart';

Quiz quizBrain = Quiz();

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
                  quizBrain.getQuestionText(),
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
                  bool answer = quizBrain.getQuestionAnswer();
                  if (answer == true) {
                    setState(() {});
                  } else {
                    setState(() {});
                  }
                  quizBrain.nextQuestion();
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
                  bool answer = quizBrain.getQuestionAnswer();
                  if (answer == false) {
                    setState(() {});
                  } else {
                    setState(() {});
                  }
                  quizBrain.nextQuestion();
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

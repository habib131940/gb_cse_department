import 'package:flutter/material.dart';
import 'package:gb_cse_department/quiz/c_quiz.dart';
import 'package:gb_cse_department/quiz/question%20answer/quiz_question_answer.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Eight Semester's Course"),
        ),
        body: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(16.0),
              child: Ink(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("images/c.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuizPage(
                                  quizList: cQuestionAnswer,
                                )));
                  },
                  splashColor: Colors.brown.withOpacity(0.5),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(16.0),
              child: Ink(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("images/cp.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: InkWell(
                  onTap: () {

                  },
                  splashColor: Colors.brown.withOpacity(0.5),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(16.0),
              child: Ink(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("images/java.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.brown.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

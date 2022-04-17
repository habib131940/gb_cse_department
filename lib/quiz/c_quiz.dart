import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  QuizPage({Key? key, required this.quizList, }) : super(key: key);
  List<QuizS> quizList;
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var elevatedButtonStyle = ElevatedButton.styleFrom(
      primary: Colors.purpleAccent, padding: const EdgeInsets.all(8));
  int index = 0;
  double score = 0;
  List<Widget> trueFalse = [];
  List<Widget> trueFalse2 = [];
  List<Widget> trueFalse3 = [];
  String step = "First Step";

  Show button = Show.questionPage;
  @override
  Widget build(BuildContext context) {

    void checkAnswer(
        {required List<QuizS> questionList,
        required int index,
        required String answer}) {
      if (answer.contains(questionList[index].answer)) {
        score += 2;

        if (trueFalse.length >= 10) {
          trueFalse2.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else if (trueFalse.length >= 10 && trueFalse2.length >= 20) {
          trueFalse3.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          trueFalse.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
        }
      } else {
        score -= 0.5;
        if (trueFalse.length >= 10) {
          trueFalse2.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
        } else if (trueFalse.length >= 10 && trueFalse2.length >= 20) {
          trueFalse3.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
        } else {
          trueFalse.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
      }
    }

    Widget questionAnswer = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Q" +
                (index + 1).toString() +
                ". " +
                widget.quizList[index].question,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        ElevatedButton(
            style: elevatedButtonStyle,
            onPressed: () {
              setState(() {
                if (index == 24) {
                  button = Show.scoreBoard1;
                } else if (index == 49) {
                  button = Show.scoreBoard2;
                } else if (index == 74) {
                  button = Show.scoreBoard3;
                }
                checkAnswer(
                    questionList: widget.quizList,
                    index: index,
                    answer: widget.quizList[index].option1);
                index++;
              });
            },
            child: Text(
              "A. " + widget.quizList[index].option1,
              textAlign: TextAlign.center,
            )),
        ElevatedButton(
            style: elevatedButtonStyle,
            onPressed: () {
              setState(() {
                if (index == 24) {
                  button = Show.scoreBoard1;
                } else if (index == 49) {
                  button = Show.scoreBoard2;
                } else if (index == 74) {
                  button = Show.scoreBoard3;
                }
                checkAnswer(
                    questionList: widget.quizList,
                    index: index,
                    answer: widget.quizList[index].option2);
                index++;
              });
            },
            child: Text(
              "B. " + widget.quizList[index].option2,
              textAlign: TextAlign.center,
            )),
        ElevatedButton(
            style: elevatedButtonStyle,
            onPressed: () {
              setState(() {
                if (index == 24) {
                  button = Show.scoreBoard1;
                } else if (index == 49) {
                  button = Show.scoreBoard2;
                } else if (index == 74) {
                  button = Show.scoreBoard3;
                }
                checkAnswer(
                    questionList: widget.quizList,
                    index: index,
                    answer: widget.quizList[index].option3);
                index++;
              });
            },
            child: Text(
              "C. " + widget.quizList[index].option3,
              textAlign: TextAlign.center,
            )),
        ElevatedButton(
          style: elevatedButtonStyle,
          onPressed: () {
            setState(() {
              if (index == 24) {
                button = Show.scoreBoard1;
              } else if (index == 49) {
                button = Show.scoreBoard2;
              } else if (index == 74) {
                button = Show.scoreBoard3;
              }
              checkAnswer(
                  questionList: widget.quizList,
                  index: index,
                  answer: widget.quizList[index].option4);
              index++;
            });
          },
          child: Text(
            "D. " + widget.quizList[index].option4,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: trueFalse,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: trueFalse2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: trueFalse3,
              )
            ],
          ),
        )
      ],
    );
    TextStyle textStyle =
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 22);

    Widget showScreen() {
      if (button == Show.questionPage) {
        return questionAnswer;
      } else if (button == Show.scoreBoard1) {
        if (score >= 20) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Good Work",
                  style: textStyle,
                ),
              ),
              Text(
                "Score $score",
                style: textStyle,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    step = "Second Step";
                    button = Show.questionPage;
                    trueFalse = [];
                    trueFalse2 = [];
                    trueFalse3 = [];
                  },
                  child: Text(
                    "Next Level",
                    style: textStyle,
                  ))
            ],
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "You need to Work Hard",
                  style: textStyle,
                ),
              ),
              Text(
                "Score $score",
                style: textStyle,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      score = 0;
                      index = 0;
                      button = Show.questionPage;
                      trueFalse = [];
                      trueFalse2 = [];
                      trueFalse3 = [];
                    });
                  },
                  child: const Text("Try Again!")),
            ],
          );
        }
      } else if (button == Show.scoreBoard2) {
        if (score >= 40) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Good Work",
                  style: textStyle,
                ),
              ),
              Text(
                "Score $score",
                style: textStyle,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      step = "Third Step";
                      button = Show.questionPage;
                      trueFalse = [];
                      trueFalse2 = [];
                      trueFalse3 = [];
                    });
                  },
                  child: Text(
                    "Next Level",
                    style: textStyle,
                  ))
            ],
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "You need to Work Hard",
                  style: textStyle,
                ),
              ),
              Text(
                "Score $score",
                style: textStyle,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      score = 0;
                      index = 0;
                      button = Show.questionPage;
                      trueFalse = [];
                      trueFalse2 = [];
                      trueFalse3 = [];
                    });
                  },
                  child: const Text("Try Again!")),
            ],
          );
        }
      } else if (button == Show.scoreBoard3) {
        if (score >= 60) {
          score = 0;
          index = 0;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Hurrah You Got GPA-5",
                  style: textStyle,
                ),
              ),
              Text(
                "Score $score",
                style: textStyle,
              ),
            ],
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "You need to Work Hard",
                  style: textStyle,
                ),
              ),
              Text(
                "Score $score",
                style: textStyle,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      score = 0;
                      index = 0;
                      button = Show.questionPage;
                      trueFalse = [];
                      trueFalse2 = [];
                      trueFalse3 = [];
                    });
                  },
                  child: const Text("Try Again!")),
            ],
          );
        }
      } else {
        return questionAnswer;
      }
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(step),
        ),
        body: showScreen(),
      ),
    );
  }
}

class QuizS {
  QuizS(
      {required this.question,
      required this.answer,
      required this.option1,
      required this.option2,
      required this.option3,
      required this.option4});
  String question;
  String answer;
  String option1;
  String option2;
  String option3;
  String option4;
}

enum Show { questionPage, scoreBoard1, scoreBoard2, scoreBoard3 }

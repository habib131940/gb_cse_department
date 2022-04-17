import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gb_cse_department/viva/viva.dart';

class QuestionPage extends StatefulWidget {
  QuestionPage({
    Key? key,
    required this.questionList,
    required this.questionTileColor,
    required this.answerPageColor,
    required this.appBarTitle,
  }) : super(key: key);
  List<Questions> questionList;
  Color questionTileColor;
  Color answerPageColor;
  String appBarTitle;

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(widget.appBarTitle), centerTitle: true,),
        body: Container(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: ListView.builder(
            itemCount: widget.questionList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(
                    left: 8.0, top: 2.0, right: 8.0, bottom: 4.0),
                color: widget.questionTileColor,
                child: ListTile(
                  leading: Text(
                    (index + 1).toString() + ".",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  title: Text(widget.questionList[index].question),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Answers(
                          answer: widget.questionList[index].answer,
                          answerPageColor: widget.answerPageColor,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Answers extends StatelessWidget {
  Answers({Key? key, required this.answer, required this.answerPageColor}) : super(key: key);
  String answer;
  Color answerPageColor;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Answer")),
        body: Container(
          color: Colors.green,
          child: Center(
            child: Text(
              answer,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}

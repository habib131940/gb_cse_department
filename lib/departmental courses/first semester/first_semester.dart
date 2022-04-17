import 'package:flutter/material.dart';
import 'package:gb_cse_department/departmental%20courses/first%20semester/question_answer.dart';
import 'package:gb_cse_department/viva/viva.dart';

class FirstS extends StatefulWidget {
  const FirstS({Key? key}) : super(key: key);

  @override
  State<FirstS> createState() => _FirstSState();
}

class _FirstSState extends State<FirstS> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("First Semester Course"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                                builder: (context) => QuestionPage(
                                      questionList: cQuestion,
                                      questionTileColor: Colors.purpleAccent,
                                      answerPageColor: Colors.green,
                                      appBarTitle: "C Programming Question",
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
                        image: ExactAssetImage("images/cmpis.jpg"),
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
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(16.0),
              child: Ink(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("images/algorithm.jpg"),
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

List<Questions> cQuestion = [
  Questions(
      question: "What are the key features in the C programming language?",
      answer: "Portability, Modularity, Flexibility, Speed, Extensibility  "),
  Questions(
      question: "What are the basic data types associated with C?",
      answer: "Int, Float "),
  Questions(
      question: "What is the description for syntax errors?",
      answer:
          "The mistakes/errors that occur while creating a program are called syntax errors. Misspelled commands or incorrect case commands, an incorrect number of parameters in calling method /function, data type mismatches can be identified as common examples for syntax errors."),
  Questions(
      question:
          "What is the process to create increment and decrement statement in C?",
      answer: "Use increment (++) and decrement (-) operator."),
  Questions(
      question: "What are reserved words with a programming language?",
      answer:
          "he words that are a part of the standard C language library are called reserved words. Those reserved words have special meaning and it is not possible to use them for any activity other than its intended functionality."),
  Questions(
      question: "What is the explanation for the dangling pointer in C?",
      answer:
          "When there is a pointer pointing to a memory address of any variable, but after some time the variable was deleted from the memory location while keeping the pointer pointing to that location is known as a dangling pointer in C."),
  Questions(
      question:
          "Differentiate between Actual Parameters and Formal Parameters.",
      answer:
          "The Parameters which are sent from main function to the subdivided function are called as Actual Parameters and the parameters which are declared a the Subdivided function end are called as Formal Parameters."),
  Questions(
      question:
          "Can a C program be compiled or executed in the absence of a main()?",
      answer:
          "The program will be compiled but will not be executed. To execute any C program, main() is required."),
  Questions(
      question: "What do you mean by a Nested Structure?",
      answer:
          "When a data member of one structure is referred by the data member of another function, then the structure is called a Nested Structure."),
  Questions(
      question: "What is a C Token?",
      answer:
          "Keywords, Constants, Special Symbols, Strings, Operators, Identifiers used in C program are referred to as C Tokens."),
  Questions(
      question: "Why is C called the Mother of all Languages?",
      answer:
          "C introduced many core concepts and data structures like arrays, lists, functions, strings, etc. Many languages designed after C are designed on the basis of C Language. Hence, it is considered as the mother of all languages."),
  Questions(question: "", answer: ""),
  Questions(question: "", answer: ""),
  Questions(question: "", answer: ""),
  Questions(question: "", answer: ""),

];

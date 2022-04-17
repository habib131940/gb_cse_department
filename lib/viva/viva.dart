import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gb_cse_department/viva/viva_answer.dart';

class Viva extends StatefulWidget {
  const Viva({Key? key}) : super(key: key);

  @override
  State<Viva> createState() => _VivaState();
}

class _VivaState extends State<Viva> {
  @override
  Widget build(BuildContext context) {
    List<Questions> vivaQuestions = [
      Questions(
          question: "What is the computer System?",
          answer:
              "A computer system is a combination of memory, CPU, peripheral devices that are connected to it, and OS (Operating System)."),
      Questions(
          question: "list out components of a computer system",
          answer:
              "A motherboard.A Central Processing Unit (CPU)A Graphics Processing Unit (GPU), also known as a video card.Random Access Memory (RAM), also known as volatile memory.Storage: Solid State Drive (SSD) or Hard Disk Drive (HDD)"),
      Questions(
          question: "what is microprocessor?",
          answer:
              "microprocessor, any of a type of miniature electronic device that contains the arithmetic, logic, and control circuitry necessary to perform the functions of a digital computer's central processing unit"),
      Questions(
          question: "list out some computer processors",
          answer:
              "Intel Pentium 111, IBM PowerPC 750X, MIPS R5000, StrongARM SA-110"),
      Questions(
          question: "list out some popular operating system",
          answer:
              "Some examples of operating systems include Apple macOS, Microsoft Windows, Google's Android OS, Linux Operating System, and Apple iOS."),
      Questions(
          question: "what is a superclass?",
          answer:
              "A superclass is the class from which many subclasses can be created. The subclasses inherit the characteristics of a superclass. The superclass is also known as the parent class or base class. In the above example, Vehicle is the Superclass and its subclasses are Car, Truck and Motorcycle."),
      Questions(
          question: "Explain class variable",
          answer:
              "A class variable is an important part of object-oriented programming (OOP) that defines a specific attribute or property for a class and may be referred to as a"),
      Questions(
          question: "What is SDLC?",
          answer:
              "Software Development Life Cycle (SDLC) is a process used by the software industry to design, develop and test high quality softwares. The SDLC aims to "),
      Questions(
          question: "Explain the meaning of file?",
          answer:
              "A file is a container in a computer system for storing information. Files used in computers are similar in features to that of paper documents used in library and office files."),
      Questions(
          question: "what is programming language?",
          answer:
              "A programming language is any set of rules that converts strings, or graphical program elements in the case of visual programming languages,"),
      Questions(question: "", answer: ""),
      Questions(question: "", answer: ""),
      Questions(question: "", answer: ""),
      Questions(question: "", answer: ""),
      Questions(question: "", answer: ""),
      Questions(question: "", answer: ""),
      Questions(question: "", answer: ""),
      Questions(question: "", answer: ""),
      Questions(question: "", answer: ""),
    ];

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Viva Preparation"),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
        child: ListView.builder(
          itemCount: vivaQuestions.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(
                  left: 8.0, top: 2.0, right: 8.0, bottom: 4.0),
              color: Colors.blueGrey,
              child: ListTile(
                leading: Text(
                  (index + 1).toString() + ".",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                title: Text(vivaQuestions[index].question),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VivaAnswer(
                                answer: vivaQuestions[index].answer,
                              )));
                },
              ),
            );
          },
        ),
      ),
    ));
  }
}

class Questions {
  Questions({required this.question, required this.answer});
  String question;
  String answer;
}

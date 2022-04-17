import 'package:flutter/material.dart';
import 'package:gb_cse_department/abbreviation/abbrebiation.dart';
import 'package:gb_cse_department/departmental%20courses/departmental_courses.dart';
import 'package:gb_cse_department/departmental%20syllabus/departmental_syllabus.dart';
import 'package:gb_cse_department/quiz/quiz.dart';
import 'package:gb_cse_department/viva/viva.dart';
import 'package:gb_cse_department/website/gono_website.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double leftL = 16;
    double rightL = 4;
    double topL = 16;
    double leftR = 4;
    double rightR = 16;
    double topR = 16;
    double circularRadious = 20;
    Color color1 = Colors.green.shade300;
    Color color2 = Colors.blue.shade300;
    double containerHeight = MediaQuery.of(context).size.height * 0.2 + 40;
    TextStyle textStyle = const TextStyle(
        color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold);
    TextStyle textStyle2 = const TextStyle(
        color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text(
            "GB CSE Department",
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      height: containerHeight,
                      decoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.all(
                              Radius.circular(circularRadious))),
                      child: Center(
                          child: Text(
                        "Departmental Syllabus",
                        textAlign: TextAlign.center,
                        style: textStyle,
                      )),
                      // padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(
                          left: leftL, top: topL, right: rightL, bottom: 4),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const DepartmentalSyllabus()));
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      height: containerHeight,
                      decoration: BoxDecoration(
                          color: color2,
                          borderRadius: BorderRadius.all(
                              Radius.circular(circularRadious))),
                      child: Center(
                        child: Text(
                          "Departmental Courses",
                          textAlign: TextAlign.center,
                          style: textStyle2,
                        ),
                      ),
                      // padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(
                          left: leftR, top: topR, right: rightR, bottom: 4),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const DepartmentalCourses()));
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      height: containerHeight,
                      decoration: BoxDecoration(
                          color: color2,
                          borderRadius: BorderRadius.all(
                              Radius.circular(circularRadious))),
                      child: Center(
                          child: Text(
                        "QUIZ",
                        textAlign: TextAlign.center,
                        style: textStyle2,
                      )),
                      // padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(
                          left: leftL, top: 4, right: rightL, bottom: 4),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Quiz()));
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      height: containerHeight,
                      decoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.all(
                              Radius.circular(circularRadious))),
                      child: Center(
                          child: Text(
                        "VIVA",
                        textAlign: TextAlign.center,
                        style: textStyle,
                      )),
                      // padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(
                          left: leftR, top: 4, right: rightR, bottom: 4),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Viva()));
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      height: containerHeight,
                      decoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.all(
                              Radius.circular(circularRadious))),
                      child: Center(
                          child: Text(
                        "Abbreviation",
                        textAlign: TextAlign.center,
                        style: textStyle,
                      )),
                      // padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(
                          left: leftL, top: 4, right: rightL, bottom: 4),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Abbreviation()));
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      height: containerHeight,
                      decoration: BoxDecoration(
                          color: color2,
                          borderRadius: BorderRadius.all(
                              Radius.circular(circularRadious))),
                      child: Center(
                          child: Text(
                        "Go To Website",
                        textAlign: TextAlign.center,
                        style: textStyle2,
                      )),
                      // padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(
                          left: leftR, top: 4, right: rightR, bottom: 4),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Website()));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

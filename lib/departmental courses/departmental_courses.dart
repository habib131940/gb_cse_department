import 'package:flutter/material.dart';
import 'package:gb_cse_department/departmental%20courses/eight_semester.dart';
import 'package:gb_cse_department/departmental%20courses/first%20semester/first_semester.dart';
import 'package:gb_cse_department/departmental%20courses/second_semester.dart';
import 'package:gb_cse_department/departmental%20courses/seventh_semester.dart';
import 'package:gb_cse_department/departmental%20courses/sixth_semester.dart';
import 'package:gb_cse_department/departmental%20courses/third_semester.dart';

import 'fifth_semester.dart';
import 'fourth_semester.dart';

class DepartmentalCourses extends StatefulWidget {
  const DepartmentalCourses({Key? key}) : super(key: key);

  @override
  State<DepartmentalCourses> createState() => _DepartmentalCoursesState();
}

class _DepartmentalCoursesState extends State<DepartmentalCourses> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
        color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("CSE_Departmental_Courses"),
        centerTitle: true,
      ),
      backgroundColor: Colors.amberAccent,
      body: Column(
        children: [
          Container(
            color: Colors.green,
            margin:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Please Select Your Semester",
              style: textStyle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  child: const Text("1st Sem"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FirstS()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  child: const Text("2nd Sem"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondS()));

                  },
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  child: const Text("3rd Sem"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ThirdS()));

                  },
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                ),
              ),
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  child: const Text("4th Sem"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FourthS()));

                  },
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  child: const Text("5th Sem"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FifthS()));

                  },
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                ),
              ),
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  child: const Text("6th Sem"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SixthS()));

                  },
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  child: const Text("7th Sem"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeventhS()));

                  },
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                ),
              ),
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  child: const Text("8th Sem"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EightS()));

                  },
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

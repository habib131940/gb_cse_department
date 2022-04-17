import 'package:flutter/material.dart';

class ThirdS extends StatefulWidget {
  const ThirdS({Key? key}) : super(key: key);

  @override
  State<ThirdS> createState() => _ThirdSState();
}

class _ThirdSState extends State<ThirdS> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Third Semester Course"),
          centerTitle: true,
        ),
        body: Column(
          children: [

            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(16.0),
              child: Ink(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("images/data.jpg"),
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

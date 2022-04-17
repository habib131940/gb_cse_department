import 'package:flutter/material.dart';

class FourthS extends StatefulWidget {
  const FourthS({Key? key}) : super(key: key);

  @override
  State<FourthS> createState() => _FourthSState();
}

class _FourthSState extends State<FourthS> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Fourth Semester Course"),
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
                    image: ExactAssetImage("images/algodesign.jpg"),
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

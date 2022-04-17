import 'package:flutter/material.dart';


class VivaAnswer extends StatelessWidget {
  VivaAnswer({Key? key, required this.answer}) : super(key: key);
  String answer;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("VIVA Preparation"),
        ),
        body: Column(
          children: [
            const SizedBox(height: 25,),
            Center(child: Image.asset("images/viva.png")),
            const SizedBox(
              height: 20,
            ),
            Text(
              answer,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

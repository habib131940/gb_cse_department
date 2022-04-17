import 'package:flutter/material.dart';

class SecondS extends StatefulWidget {
  const SecondS({Key? key}) : super(key: key);

  @override
  State<SecondS> createState() => _SecondSState();
}

class _SecondSState extends State<SecondS> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Second Semester Course"),
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
                        image: ExactAssetImage("images/cp.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {},
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
                        image: ExactAssetImage("images/digital.jpg"),
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

          ],
        ),
      ),
    );
  }
}

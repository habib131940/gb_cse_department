import 'package:flutter/material.dart';

class FifthS extends StatefulWidget {
  const FifthS({Key? key}) : super(key: key);

  @override
  State<FifthS> createState() => _FifthSState();
}

class _FifthSState extends State<FifthS> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Fifth Semester Course"),
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
                        image: ExactAssetImage("images/java.jpg"),
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
                        image: ExactAssetImage("images/dbms.jpg"),
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
                        image: ExactAssetImage("images/microprocessor.jpg"),
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
                        image: ExactAssetImage("images/dcn.jpg"),
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

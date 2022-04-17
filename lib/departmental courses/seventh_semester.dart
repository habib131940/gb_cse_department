import 'package:flutter/material.dart';

class SeventhS extends StatefulWidget {
  const SeventhS({Key? key}) : super(key: key);

  @override
  State<SeventhS> createState() => _SeventhSState();
}

class _SeventhSState extends State<SeventhS> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Seventh Semester Course"),
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
                        image: ExactAssetImage("images/software.jpg"),
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
                        image: ExactAssetImage("images/cnc.jpg"),
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
                        image: ExactAssetImage("images/dsp.jpg"),
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
                        image: ExactAssetImage("images/sm.jpg"),
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

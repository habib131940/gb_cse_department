import 'package:flutter/material.dart';

class SixthS extends StatefulWidget {
  const SixthS({Key? key}) : super(key: key);

  @override
  State<SixthS> createState() => _SixthSState();
}

class _SixthSState extends State<SixthS> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Sixth Semester Course"),
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
                        image: ExactAssetImage("images/operating.jpg"),
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
                        image: ExactAssetImage("images/web.jpg"),
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
                        image: ExactAssetImage("images/ca.jpg"),
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
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'home page/home_page.dart';

void main() {
  runApp(const MyApp());
}

bool isTrue = true;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigate();
  }

  _navigate() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    isTrue = false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isTrue ? const SplashScreen() : const HomePage(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle =
        const TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Welcome to Gono Bishwabidyalay",
            textAlign: TextAlign.center,
            style: textStyle,
          )),
          Text(
            "This is our beautiful campus",
            style: textStyle,
          ),
          const Image(
            image: AssetImage("images/gono.jpg"),
          )
        ],
      ),
    ));
  }
}

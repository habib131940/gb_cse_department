// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
//
// class Website extends StatefulWidget {
//   const Website({Key? key}) : super(key: key);
//
//   @override
//   State<Website> createState() => _WebsiteState();
// }
//
// class _WebsiteState extends State<Website> {
//   @override
//   void initState() {
//     super.initState();
//     // Enable virtual display.
//     if (Platform.isAndroid) WebView.platform = AndroidWebView();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Departmental Syllabus"),
//       ),
//       body: const WebView(
//         initialUrl:
//         "https://www.gonouniversity.edu.bd/",
//       ),
//     );
//   }
// }

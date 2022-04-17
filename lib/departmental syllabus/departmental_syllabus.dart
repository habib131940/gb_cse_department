import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DepartmentalSyllabus extends StatefulWidget {
  const DepartmentalSyllabus({Key? key}) : super(key: key);

  @override
  State<DepartmentalSyllabus> createState() => _DepartmentalSyllabusState();
}

class _DepartmentalSyllabusState extends State<DepartmentalSyllabus> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Departmental Syllabus"),
      ),
      body: const WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl:
            "https://www.gonouniversity.edu.bd/cse/ug-programme/course-description/",
      ),
    );
  }
}

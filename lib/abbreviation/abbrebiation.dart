import 'package:flutter/material.dart';

class Abbreviation extends StatefulWidget {
  const Abbreviation({Key? key}) : super(key: key);

  @override
  State<Abbreviation> createState() => _AbbreviationState();
}

class _AbbreviationState extends State<Abbreviation> {
  @override
  Widget build(BuildContext context) {
    List<Abr> abbreviation = [
      Abr(shortForm: "RAM", fullForm: "Random Access Memory"),
      Abr(shortForm: "ROM", fullForm: "Read Only Memory"),
      Abr(shortForm: "CPU", fullForm: "Central Processing Unit"),
      Abr(shortForm: "URL", fullForm: "Uniform Resource Locator"),
      Abr(shortForm: "USB", fullForm: "Universal Serial Bus"),
      Abr(
          shortForm: "VIRUS",
          fullForm: "Vital Information Resource Under Siege"),
      Abr(shortForm: "TCP", fullForm: "Transmission Control Protocol"),
      Abr(shortForm: "UPS", fullForm: "Uninterruptible Power Supply"),
      Abr(shortForm: "SATA", fullForm: "Serial Advanced Technology Attachment"),
      Abr(shortForm: "PSU", fullForm: "Power Supply Unit"),
      Abr(shortForm: "SMPS", fullForm: "Switched-Mode Power Supply"),
      Abr(shortForm: "CD", fullForm: "Compact Disc"),
      Abr(shortForm: "DVD", fullForm: "Digital Versatile Disc"),
      Abr(shortForm: "", fullForm: ""),
      Abr(shortForm: "", fullForm: ""),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Abbreviation"),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 16),
          child: ListView.builder(
              itemCount: abbreviation.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.orangeAccent,
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 4),
                  child: ListTile(
                    leading: Text(
                      (index + 1).toString() + ".",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    title: Text(
                      abbreviation[index].shortForm,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      final snackBar = SnackBar(
                        content: Text(abbreviation[index].fullForm, style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),),
                        duration: const Duration(seconds: 2),
                        backgroundColor: Colors.pink,


                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class Abr {
  Abr({required this.shortForm, required this.fullForm});
  String shortForm;
  String fullForm;
}

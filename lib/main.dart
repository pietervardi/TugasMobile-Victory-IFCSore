import 'package:flutter/material.dart';
import 'package:project_flutter/minggu/minggu2.dart';
import 'package:project_flutter/minggu/minggu3.dart';
import 'package:project_flutter/minggu/minggu4.dart';
import 'package:project_flutter/minggu/minggu5.dart';
import 'package:project_flutter/minggu/minggu6.dart';
import 'package:project_flutter/minggu/minggu7.dart';
import 'package:project_flutter/minggu/minggu9.dart';
import 'package:project_flutter/minggu/minggu10.dart';
import 'package:project_flutter/minggu/minggu11.dart';
import 'package:project_flutter/minggu/minggu12.dart';
import 'package:project_flutter/minggu/minggu13.dart';
import 'package:project_flutter/minggu/minggu14.dart';
import 'package:project_flutter/minggu/minggu15.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> buttons;

  MyApp({Key? key}) : buttons = [
    {
      'label': 'Minggu 02',
      'destination': const Minggu2(),
    },
    {
      'label': 'Minggu 03',
      'destination': const Minggu3(),
    },
    {
      'label': 'Minggu 04',
      'destination': const Minggu4(),
    },
    {
      'label': 'Minggu 05',
      'destination': const Minggu5(),
    },
    {
      'label': 'Minggu 06',
      'destination': const Minggu6(),
    },
    {
      'label': 'Minggu 07',
      'destination': const Minggu7(),
    },
    {
      'label': 'Minggu 09',
      'destination': const Minggu9(),
    },
    {
      'label': 'Minggu 10',
      'destination': const Minggu10(),
    },
    {
      'label': 'Minggu 11',
      'destination': const Minggu11(),
    },
    {
      'label': 'Minggu 12',
      'destination': const Minggu12(),
    },
    {
      'label': 'Minggu 13',
      'destination': const Minggu13(),
    },
    {
      'label': 'Minggu 14',
      'destination': const Minggu14(),
    },
    {
      'label': 'Minggu 15',
      'destination': const Minggu15(),
    },
  ],
  super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = const Color(0xFFFF597B);
    Color secondaryColor = const Color(0xFFFF8E9E);
    Color backgroundColor = const Color(0xFFF9B5D0);
    Color textColor = const Color(0xFFEEEEEE);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'VICTORY',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w800
            ),
          ),
          centerTitle: true,
          backgroundColor: primaryColor,
          toolbarHeight: 80,
        ),
        backgroundColor: backgroundColor,
        body: Center(
          child: ListView.builder(
            itemCount: buttons.length,
            itemBuilder: (context, index) {
              final button = buttons[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                    minimumSize: const Size.fromHeight(60),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => button['destination']
                      ),
                    );
                  },
                  child: Text(
                    button['label'],
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold,
                      color: textColor
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
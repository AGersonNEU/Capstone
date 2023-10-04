import 'package:capstone/DiagnosePage/car_search.dart';
import 'package:capstone/DiagnosePage/diagnosis_question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiagnosePage extends StatefulWidget {
  const DiagnosePage({super.key});

  @override
  State<DiagnosePage> createState() => _DiagnosePageState();
}

class _DiagnosePageState extends State<DiagnosePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: <Widget>[
        Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(5, 70, 5, 20),
            child: Text(
              'Diagnosis Quiz',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Center(
          child: const CarSearch(),
        ),
        DiagnosisQuestion(),
        DiagnosisQuestion(),
        DiagnosisQuestion()
      ],
    ));
  }
}

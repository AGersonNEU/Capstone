import 'package:capstone/DiagnosePage/diagnose_answer.dart';
import 'package:capstone/DiagnosePage/diagnosis_question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiagnoseHearPage extends StatefulWidget {
  const DiagnoseHearPage({super.key});

  @override
  State<DiagnoseHearPage> createState() => _DiagnoseHearPageState();
}

class _DiagnoseHearPageState extends State<DiagnoseHearPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
        Column(
            children: [
              DiagnosisQuestion(),
              DiagnoseAnswer(question_answer: 'Purple'),
              DiagnoseAnswer(question_answer: 'Blue'),
              DiagnoseAnswer(question_answer: 'Pink')
            ],
        ),
    );
  }
}

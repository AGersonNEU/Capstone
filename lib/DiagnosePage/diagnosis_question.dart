import 'package:capstone/DiagnosePage/diagnose_answer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../DiagnoseResultsPage/diagnose_results_main_page.dart';

class DiagnosisQuestion extends StatefulWidget {
  final String question;

  const DiagnosisQuestion({
    super.key,
    required this.question
  });

  @override
  State<DiagnosisQuestion> createState() => _DiagnosisQuestionState(question);
}

class _DiagnosisQuestionState extends State<DiagnosisQuestion> {
  late String _question;

  _DiagnosisQuestionState(String question){
    _question = question;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child:
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 5),
              child:
              Text(
                _question,
                style:
                const TextStyle(
                    fontSize: 20
                ),
              )
          ),
        ),
      ],
    );
  }
}

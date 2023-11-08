import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'diagnose_choices_radio_groups.dart';

class DiagnoseAnswer extends StatefulWidget {
  final String question_answer;
  final WhatDoYouHear answer_value;

  const DiagnoseAnswer(
      {
        super.key,
        required this.question_answer,
        required this.answer_value,

      }
  );

  @override
  State<DiagnoseAnswer> createState() => _DiagnoseAnswerState(question_answer, answer_value);
}

class _DiagnoseAnswerState extends State<DiagnoseAnswer> {
  WhatDoYouHear _choice = WhatDoYouHear.Squeal;
  late String answer = '';

  _DiagnoseAnswerState(String question_answer, WhatDoYouHear answer_value){
    answer = question_answer;
    _choice = answer_value;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title:
          Text(
              answer
          ),
      leading: Radio<WhatDoYouHear>(
        value: _choice,
        toggleable: true,
        groupValue: whatDoYouHear,
        onChanged: (WhatDoYouHear? value){
            whatDoYouHear = _choice;
            setState(() {
              whatDoYouHear = value!;
            });
        },
      ),
    );
  }
}

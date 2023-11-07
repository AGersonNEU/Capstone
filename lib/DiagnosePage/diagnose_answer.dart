import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'diagnose_choices_radio_groups.dart';

class DiagnoseAnswer extends StatefulWidget {
  final String question_answer;


  const DiagnoseAnswer(
      {
        super.key,
        required this.question_answer,

      }
  );

  @override
  State<DiagnoseAnswer> createState() => _DiagnoseAnswerState(question_answer);
}

class _DiagnoseAnswerState extends State<DiagnoseAnswer> {
  choices? _choice = choices.Ford;
  late String answer = '';
  late String value = '';

  _DiagnoseAnswerState(String question_answer){
    answer = question_answer;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title:
          Text(
              answer
          ),
      leading: Radio<choices>(
        value: choices.PT,
        groupValue: _choice,
        onChanged: (choices? value){
          setState(() {
            _choice = value;
          });
        },
      ),
    );
  }
}

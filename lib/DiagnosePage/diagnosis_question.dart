import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiagnosisQuestion extends StatefulWidget {
  const DiagnosisQuestion({super.key});

  @override
  State<DiagnosisQuestion> createState() => _DiagnosisQuestionState();
}

class _DiagnosisQuestionState extends State<DiagnosisQuestion> {

  void _question (){

  }

  void _answers(){
    //return List<Checkbox>;
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child:
          Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 5),
              child:
              Text(
                'Question One',
                style:
                TextStyle(
                    fontSize: 20
                ),
              )
          ),
        ),
        Align(
          alignment: Alignment.center,
          child:
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 10, 20),
              child:
              Text(
                'What color is the sky? (select multiple)',
                style:
                TextStyle(
                    fontSize: 17
                ),
              )
            ),
        ),
        Align(
          alignment: Alignment.center,
          child:
            Padding(
              padding: EdgeInsets.fromLTRB(22, 0, 0, 22),
              child:
              Text(
                'A. Purple',
                style:
                TextStyle(
                    fontSize: 17
                ),
              )
          ),
        )
      ],
    );
  }
}

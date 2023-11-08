import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'diagnosis_question.dart';

class QuestionNavigation extends StatefulWidget {
  final ElevatedButton nextButton;

  const QuestionNavigation({
    super.key,
    required this.nextButton,

  });

  @override
  State<QuestionNavigation> createState() => _QuestionNavigationState(nextButton);
}

class _QuestionNavigationState extends State<QuestionNavigation> {
  late var ElevatedNextButton;

  _QuestionNavigationState(nextButton){
    ElevatedNextButton = nextButton;
  }


  void _back (){
    Navigator.pop(
        context
    );
  }


  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child:
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child:
                ElevatedButton(
                  onPressed: _back,
                  style:
                  ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB2C9D6),
                    shadowColor: const Color(0xFF1E1F1E),
                  ),
                  child:
                  const Text(
                    'back',
                    style:
                    TextStyle(
                        fontSize: 20,
                        color: Color(0xFFF6F9FA)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child:
                 ElevatedNextButton
              )
            ],
          ),
        )

    );
  }
}

import 'package:capstone/DiagnosePage/Hear/Squeal/diagnose_hear_squeal.dart';
import 'package:capstone/DiagnosePage/diagnose_answer.dart';
import 'package:capstone/DiagnosePage/diagnose_choices_radio_groups.dart';
import 'package:capstone/DiagnosePage/diagnose_question_navigation.dart';
import 'package:capstone/DiagnosePage/diagnosis_question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiagnoseHearPage extends StatefulWidget {
  const DiagnoseHearPage({super.key});

  @override
  State<DiagnoseHearPage> createState() => _DiagnoseHearPageState();
}

class _DiagnoseHearPageState extends State<DiagnoseHearPage> {

  void _next(){
    WhatDoYouHear answer = whatDoYouHear;
    switch(answer){
      case WhatDoYouHear.Squeal:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WhenDoYouHearTheSqueal()));
      case WhatDoYouHear.Knock:
        // TODO: Handle this case.
      case WhatDoYouHear.Tap:
        // TODO: Handle this case.
      case WhatDoYouHear.Rattle:
        // TODO: Handle this case.
      case WhatDoYouHear.Chirp:
        // TODO: Handle this case.
      case WhatDoYouHear.Clunk:
        // TODO: Handle this case.
      case WhatDoYouHear.Hiss:
        // TODO: Handle this case.
    }


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
            children: [
              const DiagnosisQuestion(question: 'What do you hear?'),
              ListTile(
                title:
                const Text(
                    'Squeal'
                ),
                leading: Radio<WhatDoYouHear>(
                  value: WhatDoYouHear.Squeal,
                  toggleable: true,
                  groupValue: whatDoYouHear,
                  onChanged: (WhatDoYouHear? value){
                    whatDoYouHear = WhatDoYouHear.Squeal;
                    setState(() {
                      whatDoYouHear = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title:
                const Text(
                    'Knock'
                ),
                leading: Radio<WhatDoYouHear>(
                  value: WhatDoYouHear.Knock,
                  toggleable: true,
                  groupValue: whatDoYouHear,
                  onChanged: (WhatDoYouHear? value){
                    whatDoYouHear = WhatDoYouHear.Knock;
                    setState(() {
                      whatDoYouHear = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title:
                const Text(
                    'Tap'
                ),
                leading: Radio<WhatDoYouHear>(
                  value: WhatDoYouHear.Tap,
                  toggleable: true,
                  groupValue: whatDoYouHear,
                  onChanged: (WhatDoYouHear? value){
                    whatDoYouHear = WhatDoYouHear.Tap;
                    setState(() {
                      whatDoYouHear = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title:
                const Text(
                    'Rattle'
                ),
                leading: Radio<WhatDoYouHear>(
                  value: WhatDoYouHear.Rattle,
                  toggleable: true,
                  groupValue: whatDoYouHear,
                  onChanged: (WhatDoYouHear? value){
                    whatDoYouHear = WhatDoYouHear.Rattle;
                    setState(() {
                      whatDoYouHear = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title:
                const Text(
                    'Chirp'
                ),
                leading: Radio<WhatDoYouHear>(
                  value: WhatDoYouHear.Chirp,
                  toggleable: true,
                  groupValue: whatDoYouHear,
                  onChanged: (WhatDoYouHear? value){
                    whatDoYouHear = WhatDoYouHear.Chirp;
                    setState(() {
                      whatDoYouHear = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title:
                const Text(
                    'Clunk'
                ),
                leading: Radio<WhatDoYouHear>(
                  value: WhatDoYouHear.Clunk,
                  toggleable: true,
                  groupValue: whatDoYouHear,
                  onChanged: (WhatDoYouHear? value){
                    whatDoYouHear = WhatDoYouHear.Clunk;
                    setState(() {
                      whatDoYouHear = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title:
                const Text(
                    'Hiss'
                ),
                leading: Radio<WhatDoYouHear>(
                  value: WhatDoYouHear.Hiss,
                  toggleable: true,
                  groupValue: whatDoYouHear,
                  onChanged: (WhatDoYouHear? value){
                    whatDoYouHear = WhatDoYouHear.Hiss;
                    setState(() {
                      whatDoYouHear = value!;
                    });
                  },
                ),
              ),
              QuestionNavigation(
                nextButton:
                  ElevatedButton(
                      onPressed: _next,
                      child:
                        const Text(
                          'Next'
                        )
                  ),
              ),
              Text(
                whatDoYouHear.toString()
              )
            ],
        ),
    );
  }
}

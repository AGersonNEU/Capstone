import 'package:capstone/DiagnosePage/Hear/Chirp/diagnose_hear_chirp.dart';
import 'package:capstone/DiagnosePage/Hear/Clunk/diagnose_hear_clunk.dart';
import 'package:capstone/DiagnosePage/Hear/Rattle/diagnose_hear_rattle.dart';
import 'package:capstone/DiagnosePage/Hear/Squeal/diagnose_hear_squeal.dart';
import 'package:capstone/DiagnosePage/diagnose_answer.dart';
import 'package:capstone/DiagnosePage/diagnose_choices_radio_groups.dart';
import 'package:capstone/DiagnosePage/diagnose_question_navigation.dart';
import 'package:capstone/DiagnosePage/diagnosis_question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:capstone/DiagnoseResultsPage/diagnosis_condensed_view.dart';

import '../../DiagnoseResultsPage/diagnose_results_main_page.dart';

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
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DiagnoseResultsPage(
              allDiagnosis:
                Column(
                  children: [
                    DiagnosisResultMini(
                      part_name: 'Oil Pan',
                      service: 'Oil Change',
                      diagnose_title: 'Low Engine Oil Level',
                      diagnose_info: 'Motor oil and lube changes are very important for keeping your '
                          'engine functioning properly. Motor oil keeps your engine lubricated so there '
                          'isn’t any excess friction or wear on moving parts. Oil cools down your engine, '
                          'fights rust and corrosion, reduces engine noise, and works with the oil filter '
                          'to remove contaminants from the engine. Oil is very important to your engine for '
                          'helping it operate at optimum performance levels. When you drive your car, your '
                          'engine becomes very hot, and heat makes oil break down. Broken down oil doesn’t '
                          'move through your engine as well, which means the oil cannot do its job. Oil also '
                          'cleans your engine as it flows around it. Dirty oil moves more slowly than clean oil '
                          'and is not able to lubricate your engine correctly. In addition, the gritty particles '
                          'in dirty oil can hinder its friction reduction abilities and increase wear on moving parts.',
                    )
                  ],
                ),
            ))
        );
      case WhatDoYouHear.Tap:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DiagnoseResultsPage(
              allDiagnosis:
              Column(
                children: [
                  DiagnosisResultMini(
                    part_name: 'Oil Pan',
                    service: 'Oil Change',
                    diagnose_title: 'Low Engine Oil Level',
                    diagnose_info: 'Motor oil and lube changes are very important for keeping your '
                        'engine functioning properly. Motor oil keeps your engine lubricated so there '
                        'isn’t any excess friction or wear on moving parts. Oil cools down your engine, '
                        'fights rust and corrosion, reduces engine noise, and works with the oil filter '
                        'to remove contaminants from the engine. Oil is very important to your engine for '
                        'helping it operate at optimum performance levels. When you drive your car, your '
                        'engine becomes very hot, and heat makes oil break down. Broken down oil doesn’t '
                        'move through your engine as well, which means the oil cannot do its job. Oil also '
                        'cleans your engine as it flows around it. Dirty oil moves more slowly than clean oil '
                        'and is not able to lubricate your engine correctly. In addition, the gritty particles '
                        'in dirty oil can hinder its friction reduction abilities and increase wear on moving parts.',
                  )
                ],
              ),
            ))
        );
      case WhatDoYouHear.Rattle:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WhereDoYouHearTheRattle())
        );
      case WhatDoYouHear.Chirp:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WhenDoYouHearTheChirp())
        );
      case WhatDoYouHear.Clunk:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WhenDoYouHearTheClunk())
        );
      case WhatDoYouHear.Hiss:
        //TODO: MISC
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DiagnoseResultsPage(
            allDiagnosis:
            Column(
              children: [
                DiagnosisResultMini(
                  part_name: 'Serpentine Belt',
                  service: 'Serpentine Belt Replacement',
                  diagnose_title: 'MISC',
                  diagnose_info: '',

                )
              ],
            ),
          ))
      );
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

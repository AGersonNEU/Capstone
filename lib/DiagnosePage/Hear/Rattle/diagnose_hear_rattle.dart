import 'package:capstone/DiagnosePage/diagnose_question_navigation.dart';
import 'package:capstone/DiagnosePage/diagnosis_question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../DiagnoseResultsPage/diagnose_results_main_page.dart';
import '../../../DiagnoseResultsPage/diagnosis_condensed_view.dart';
import '../../diagnose_choices_radio_groups.dart';

class WhereDoYouHearTheRattle extends StatefulWidget {
  const WhereDoYouHearTheRattle({super.key});

  @override
  State<WhereDoYouHearTheRattle> createState() => _WhereDoYouHearTheRattleState();
}

class _WhereDoYouHearTheRattleState extends State<WhereDoYouHearTheRattle> {

  void _next(){
    WhenRattle answer = whenRattle;
    switch(answer){
      case WhenRattle.Under:
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
                  )
                ],
              ),
            ))
        );
      case WhenRattle.Rear:
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
                  )
                ],
              ),
            ))
        );
      case WhenRattle.Engine:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DiagnoseResultsPage(
              allDiagnosis:
              Column(
                children: [
                  DiagnosisResultMini(
                    part_name: 'Timing Belt',
                    service: 'Timing Belt Replacement',
                    diagnose_title: 'Bad Timing Belt/Chain',
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
            const DiagnosisQuestion(question: 'Where do you hear the rattle?'),
            ListTile(
              title:
              const Text(
                  'Under the vehicle'
              ),
              leading: Radio<WhenRattle>(
                value: WhenRattle.Under,
                toggleable: true,
                groupValue: whenRattle,
                onChanged: (WhenRattle? value){
                  whenRattle = WhenRattle.Under;
                  setState(() {
                    whenRattle = value!;
                  });
                },
              ),
            ),
            ListTile(
              title:
              const Text(
                  'Under the rear of the vehicle'
              ),
              leading: Radio<WhenRattle>(
                value: WhenRattle.Rear,
                toggleable: true,
                groupValue: whenRattle,
                onChanged: (WhenRattle? value){
                  whenRattle = WhenRattle.Rear;
                  setState(() {
                    whenRattle = value!;
                  });
                },
              ),
            ),
            ListTile(
              title:
              const Text(
                  'Engine Compartment'
              ),
              leading: Radio<WhenRattle>(
                value: WhenRattle.Engine,
                toggleable: true,
                groupValue: whenRattle,
                onChanged: (WhenRattle? value){
                  whenRattle = WhenRattle.Engine;
                  setState(() {
                    whenRattle = value!;
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
            )
          ],
        ),
    );
  }
}

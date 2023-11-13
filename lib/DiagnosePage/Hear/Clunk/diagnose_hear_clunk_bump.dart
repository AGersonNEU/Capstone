import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../DiagnoseResultsPage/diagnose_results_main_page.dart';
import '../../../DiagnoseResultsPage/diagnosis_condensed_view.dart';
import '../../diagnose_choices_radio_groups.dart';
import '../../diagnose_question_navigation.dart';
import '../../diagnosis_question.dart';

class WhereDoYouHearTheClunkBump extends StatefulWidget {
  const WhereDoYouHearTheClunkBump({super.key});

  @override
  State<WhereDoYouHearTheClunkBump> createState() => _WhereDoYouHearTheClunkBumpState();
}

class _WhereDoYouHearTheClunkBumpState extends State<WhereDoYouHearTheClunkBump> {
  
  void _next(){
    WhenClunkBump answer = whenClunkBump;
    switch(answer){
      case WhenClunkBump.Front:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DiagnoseResultsPage(
              allDiagnosis:
              Column(
                children: [
                  DiagnosisResultMini(
                    part_name: 'Shock / Strut Assembly',
                    service: 'Suspension Rebuild',
                    diagnose_title: 'Loose or Worn Out Front End Component',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Strut Assembly',
                    service: 'Struts Replacement',
                    diagnose_title: 'Worn Struts',
                  )
                ],
              ),
            ))
        );
      case WhenClunkBump.Rear:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DiagnoseResultsPage(
              allDiagnosis:
              Column(
                children: [
                  DiagnosisResultMini(
                    part_name: 'Shock / Strut Assembly',
                    service: 'Suspension Rebuild',
                    diagnose_title: 'Loose or Worn Suspension Parts',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Shock',
                    service: 'Shocks Replacement',
                    diagnose_title: 'Worn out Shocks. Struts',
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
          const DiagnosisQuestion(question: 'Where do you hear the clunk?'),
          ListTile(
            title:
            const Text(
                'Front'
            ),
            leading: Radio<WhenClunkBump>(
              value: WhenClunkBump.Front,
              toggleable: true,
              groupValue: whenClunkBump,
              onChanged: (WhenClunkBump? value){
                whenClunkBump = WhenClunkBump.Front;
                setState(() {
                  whenClunkBump = value!;
                });
              },
            ),
          ),
          ListTile(
            title:
            const Text(
                'Rear'
            ),
            leading: Radio<WhenClunkBump>(
              value: WhenClunkBump.Rear,
              toggleable: true,
              groupValue: whenClunkBump,
              onChanged: (WhenClunkBump? value){
                whenClunkBump = WhenClunkBump.Rear;
                setState(() {
                  whenClunkBump = value!;
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

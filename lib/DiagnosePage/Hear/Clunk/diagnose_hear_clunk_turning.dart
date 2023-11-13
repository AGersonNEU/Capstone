import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../DiagnoseResultsPage/diagnose_results_main_page.dart';
import '../../../DiagnoseResultsPage/diagnosis_condensed_view.dart';
import '../../diagnose_choices_radio_groups.dart';
import '../../diagnose_question_navigation.dart';
import '../../diagnosis_question.dart';

class WhereDoYouHearTheClunk extends StatefulWidget {
  const WhereDoYouHearTheClunk({super.key});

  @override
  State<WhereDoYouHearTheClunk> createState() => _WhereDoYouHearTheClunkState();
}

class _WhereDoYouHearTheClunkState extends State<WhereDoYouHearTheClunk> {

  void _next (){
    WhenClunkTurning answer = whenClunkTurning;
    switch(answer){
      case WhenClunkTurning.Left:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DiagnoseResultsPage(
              allDiagnosis:
              Column(
                children: [
                  DiagnosisResultMini(
                    part_name: 'Tie Rod End',
                    service: 'Inner Tie Rod & Outer Tie Rod Replacement',
                    diagnose_title: 'Loose or Worn Tie Rod Ends',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Ball Joint',
                    service: 'Ball Joint Replacement',
                    diagnose_title: "Worn or 'Dry' Ball Joint",
                  ),
                  DiagnosisResultMini(
                    part_name: 'C-V Axle',
                    service: 'CV Axle Replacement',
                    diagnose_title: 'Axle Assembly Failure',
                  ),
                ],
              ),
            ))
        );
      case WhenClunkTurning.Right:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DiagnoseResultsPage(
              allDiagnosis:
              Column(
                children: [
                  DiagnosisResultMini(
                    part_name: 'Tie Rod End',
                    service: 'Inner Tie Rod & Outer Tie Rod Replacement',
                    diagnose_title: 'Loose or Worn Tie Rod Ends',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Ball Joint',
                    service: 'Ball Joint Replacement',
                    diagnose_title: "Worn or 'Dry' Ball Joint",
                  ),
                  DiagnosisResultMini(
                    part_name: 'C-V Axle',
                    service: 'CV Axle Replacement',
                    diagnose_title: 'Axle Assembly Failure',
                  ),
                ],
              ),
            ))
        );
      case WhenClunkTurning.IDK:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DiagnoseResultsPage(
              allDiagnosis:
              Column(
                children: [
                  DiagnosisResultMini(
                    part_name: 'Tie Rod End',
                    service: 'Inner Tie Rod & Outer Tie Rod Replacement',
                    diagnose_title: 'Loose or Worn Tie Rod Ends',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Ball Joint',
                    service: 'Ball Joint Replacement',
                    diagnose_title: "Worn or 'Dry' Ball Joint",
                  ),
                  DiagnosisResultMini(
                    part_name: 'C-V Axle',
                    service: 'CV Axle Replacement',
                    diagnose_title: 'Axle Assembly Failure',
                  ),
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
                'Front left'
            ),
            leading: Radio<WhenClunkTurning>(
              value: WhenClunkTurning.Left,
              toggleable: true,
              groupValue: whenClunkTurning,
              onChanged: (WhenClunkTurning? value){
                whenClunkTurning = WhenClunkTurning.Left;
                setState(() {
                  whenClunkTurning = value!;
                });
              },
            ),
          ),
          ListTile(
            title:
            const Text(
                'Front right'
            ),
            leading: Radio<WhenClunkTurning>(
              value: WhenClunkTurning.Left,
              toggleable: true,
              groupValue: whenClunkTurning,
              onChanged: (WhenClunkTurning? value){
                whenClunkTurning = WhenClunkTurning.Left;
                setState(() {
                  whenClunkTurning = value!;
                });
              },
            ),
          ),
          ListTile(
            title:
            const Text(
                'Not sure'
            ),
            leading: Radio<WhenClunkTurning>(
              value: WhenClunkTurning.Left,
              toggleable: true,
              groupValue: whenClunkTurning,
              onChanged: (WhenClunkTurning? value){
                whenClunkTurning = WhenClunkTurning.Left;
                setState(() {
                  whenClunkTurning = value!;
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

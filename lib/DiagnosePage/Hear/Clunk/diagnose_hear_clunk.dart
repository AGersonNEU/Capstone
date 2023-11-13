import 'package:capstone/DiagnosePage/Hear/Clunk/diagnose_hear_clunk_turning.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../DiagnoseResultsPage/diagnose_results_main_page.dart';
import '../../../DiagnoseResultsPage/diagnosis_condensed_view.dart';
import '../../diagnose_choices_radio_groups.dart';
import '../../diagnose_question_navigation.dart';
import '../../diagnosis_question.dart';

class WhenDoYouHearTheClunk extends StatefulWidget {
  const WhenDoYouHearTheClunk({super.key});

  @override
  State<WhenDoYouHearTheClunk> createState() => _WhenDoYouHearTheClunkState();
}

class _WhenDoYouHearTheClunkState extends State<WhenDoYouHearTheClunk> {

  void _next(){
    WhenClunk answer = whenClunk;
    switch(answer){
      case WhenClunk.Turning:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WhereDoYouHearTheClunk())
        );
      case WhenClunk.Bumps:
        // TODO: Handle this case.
      case WhenClunk.Gear:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DiagnoseResultsPage(
            allDiagnosis:
            Column(
              children: [
                DiagnosisResultMini(
                  part_name: 'C-V Axle',
                  service: 'CV Axle Replacement',
                  diagnose_title: 'Axle Assembly Failure',
                ),
                DiagnosisResultMini(
                  part_name: 'U Joint',
                  service: 'U-Joint Replacement',
                  diagnose_title: 'Worn or Damaged Universal Joints',
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
                'When Turning'
            ),
            leading: Radio<WhenClunk>(
              value: WhenClunk.Turning,
              toggleable: true,
              groupValue: whenClunk,
              onChanged: (WhenClunk? value){
                whenClunk = WhenClunk.Turning;
                setState(() {
                  whenClunk = value!;
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

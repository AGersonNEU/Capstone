import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../DiagnoseResultsPage/diagnose_results_main_page.dart';
import '../../../DiagnoseResultsPage/diagnosis_condensed_view.dart';
import '../../diagnose_choices_radio_groups.dart';
import '../../diagnose_question_navigation.dart';
import '../../diagnosis_question.dart';

class WhenDoYouHearTheChirpWhenYouAccelerate extends StatefulWidget {
  const WhenDoYouHearTheChirpWhenYouAccelerate({super.key});

  @override
  State<WhenDoYouHearTheChirpWhenYouAccelerate> createState() => _WhenDoYouHearTheChirpWhenYouAccelerateState();
}

class _WhenDoYouHearTheChirpWhenYouAccelerateState extends State<WhenDoYouHearTheChirpWhenYouAccelerate> {

  void _next(){
    WhenChirpAccelerate answer = whenChirpAccelerate;
    switch(answer){
      case WhenChirpAccelerate.Engine:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DiagnoseResultsPage(
              allDiagnosis:
              Column(
                children: [
                  DiagnosisResultMini(
                    part_name: 'Serpentine Belt',
                    service: 'Serpentine Belt Replacement',
                    diagnose_title: 'Loose or Worn Drive Belt',
                  )
                ],
              ),
            ))
        );
      case WhenChirpAccelerate.Under:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DiagnoseResultsPage(
              allDiagnosis:
              Column(
                children: [
                  DiagnosisResultMini(
                    part_name: 'U Joint',
                    service: 'U-Joint Replacement',
                    diagnose_title: 'Worn or Damaged Universal Joints',
                  )
                ],
              ),
            ))
        );
      case WhenChirpAccelerate.Front:
        // TODO: MISC
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
      case WhenChirpAccelerate.IDK:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DiagnoseResultsPage(
            allDiagnosis:
            Column(
              children: [
                DiagnosisResultMini(
                  part_name: 'Serpentine Belt',
                  service: 'Serpentine Belt Replacement',
                  diagnose_title: 'Loose or Worn Drive Belt',
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
          const DiagnosisQuestion(question: 'Where do you hear the chirp when you accelerate?'),
          ListTile(
            title:
            const Text(
                'Engine Compartment'
            ),
            leading: Radio<WhenChirpAccelerate>(
              value: WhenChirpAccelerate.Engine,
              toggleable: true,
              groupValue: whenChirpAccelerate,
              onChanged: (WhenChirpAccelerate? value){
                whenChirpAccelerate = WhenChirpAccelerate.Engine;
                setState(() {
                  whenChirpAccelerate = value!;
                });
              },
            ),
          ),
          ListTile(
            title:
            const Text(
                'Under the vehicle'
            ),
            leading: Radio<WhenChirpAccelerate>(
              value: WhenChirpAccelerate.Under,
              toggleable: true,
              groupValue: whenChirpAccelerate,
              onChanged: (WhenChirpAccelerate? value){
                whenChirpAccelerate = WhenChirpAccelerate.Under;
                setState(() {
                  whenChirpAccelerate = value!;
                });
              },
            ),
          ),
          ListTile(
            title:
            const Text(
                'From the front wheels'
            ),
            leading: Radio<WhenChirpAccelerate>(
              value: WhenChirpAccelerate.Front,
              toggleable: true,
              groupValue: whenChirpAccelerate,
              onChanged: (WhenChirpAccelerate? value){
                whenChirpAccelerate = WhenChirpAccelerate.Front;
                setState(() {
                  whenChirpAccelerate = value!;
                });
              },
            ),
          ),
          ListTile(
            title:
            const Text(
                "I'm not sure"
            ),
            leading: Radio<WhenChirpAccelerate>(
              value: WhenChirpAccelerate.IDK,
              toggleable: true,
              groupValue: whenChirpAccelerate,
              onChanged: (WhenChirpAccelerate? value){
                whenChirpAccelerate = WhenChirpAccelerate.IDK;
                setState(() {
                  whenChirpAccelerate = value!;
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

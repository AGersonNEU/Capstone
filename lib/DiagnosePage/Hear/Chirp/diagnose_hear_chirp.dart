import 'package:capstone/DiagnosePage/Hear/Chirp/diagnose_chirp_accelerate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../DiagnoseResultsPage/diagnose_results_main_page.dart';
import '../../../DiagnoseResultsPage/diagnosis_condensed_view.dart';
import '../../diagnose_choices_radio_groups.dart';
import '../../diagnose_question_navigation.dart';
import '../../diagnosis_question.dart';

class WhenDoYouHearTheChirp extends StatefulWidget {
  const WhenDoYouHearTheChirp({super.key});

  @override
  State<WhenDoYouHearTheChirp> createState() => _WhenDoYouHearTheChirpState();
}

class _WhenDoYouHearTheChirpState extends State<WhenDoYouHearTheChirp> {
  
  void _next(){
    WhenChirp answer = whenChirp;
    switch(answer){
      case WhenChirp.Start:
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
      case WhenChirp.Running:
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
      case WhenChirp.Stopping:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DiagnoseResultsPage(
              allDiagnosis:
              Column(
                children: [
                  DiagnosisResultMini(
                    part_name: 'Brake Pad',
                    service: 'Brake Inspection',
                    diagnose_title: 'Brake Pad Wear Indicator is Contacting Rotor',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Brake Pad / Brake Rotor / Brake Caliper',
                    service: 'Front Disc Brake Repair',
                    diagnose_title: 'Brake Pad Quality and Rotor Finish',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Brake Pad / Brake Rotor / Brake Caliper',
                    service: 'Front Disc Brake Repair',
                    diagnose_title: 'Worn Brake Pads',
                  ),
                ],
              ),
            ))
        );
      case WhenChirp.Accelerate:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WhenDoYouHearTheChirpWhenYouAccelerate())
        );
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Column(
          children: [
            const DiagnosisQuestion(question: 'When do you hear the chirp?'),
            ListTile(
              title:
              const Text(
                  'When I start the car'
              ),
              leading: Radio<WhenChirp>(
                value: WhenChirp.Start,
                toggleable: true,
                groupValue: whenChirp,
                onChanged: (WhenChirp? value){
                  whenChirp = WhenChirp.Start;
                  setState(() {
                    whenChirp = value!;
                  });
                },
              ),
            ),
            ListTile(
              title:
              const Text(
                  'When the engine is running'
              ),
              leading: Radio<WhenChirp>(
                value: WhenChirp.Running,
                toggleable: true,
                groupValue: whenChirp,
                onChanged: (WhenChirp? value){
                  whenChirp = WhenChirp.Running;
                  setState(() {
                    whenChirp = value!;
                  });
                },
              ),
            ),
            ListTile(
              title:
              const Text(
                  'When stopping'
              ),
              leading: Radio<WhenChirp>(
                value: WhenChirp.Stopping,
                toggleable: true,
                groupValue: whenChirp,
                onChanged: (WhenChirp? value){
                  whenChirp = WhenChirp.Stopping;
                  setState(() {
                    whenChirp = value!;
                  });
                },
              ),
            ),
            ListTile(
              title:
              const Text(
                  'When I accelerate'
              ),
              leading: Radio<WhenChirp>(
                value: WhenChirp.Accelerate,
                toggleable: true,
                groupValue: whenChirp,
                onChanged: (WhenChirp? value){
                  whenChirp = WhenChirp.Accelerate;
                  setState(() {
                    whenChirp = value!;
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

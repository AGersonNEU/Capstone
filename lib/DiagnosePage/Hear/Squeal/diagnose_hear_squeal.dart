import 'package:capstone/DiagnoseResultsPage/diagnose_results_main_page.dart';
import 'package:capstone/DiagnoseResultsPage/diagnosis_condensed_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../diagnose_choices_radio_groups.dart';
import '../../diagnose_question_navigation.dart';
import '../../diagnosis_question.dart';

class WhenDoYouHearTheSqueal extends StatefulWidget {
  const WhenDoYouHearTheSqueal({super.key});

  @override
  State<WhenDoYouHearTheSqueal> createState() => _WhenDoYouHearTheSquealState();
}

class _WhenDoYouHearTheSquealState extends State<WhenDoYouHearTheSqueal> {

  void _next(){
    WhenSqueal answer = whenSqueal;
    switch(answer){

      case WhenSqueal.Always:
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
      case WhenSqueal.Stopping:
        ///TODO: dont pass part_name and splitting string but a list of strings
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
      case WhenSqueal.Starting:
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
      case WhenSqueal.Turning:
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
                  ),
                  DiagnosisResultMini(
                    part_name: 'Power Steering Pump',
                    service: 'Power Steering Pump Replacement',
                    diagnose_title: 'Faulty Power Steering Pump',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Power Steering Pump',
                    service: 'suspension and Steering System Repair',
                    diagnose_title: 'Low Power Steering Fluid',
                  ),
                ],
              ),
            ))
        );
      case WhenSqueal.Moving:
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
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          const DiagnosisQuestion(question: 'When do you hear the squeal?'),
          ListTile(
            title:
            const Text(
                'All the time'
            ),
            leading: Radio<WhenSqueal>(
              value: WhenSqueal.Always,
              toggleable: true,
              groupValue: whenSqueal,
              onChanged: (WhenSqueal? value){
                whenSqueal = WhenSqueal.Always;
                setState(() {
                  whenSqueal = value!;
                });
              },
            ),
          ),
          ListTile(
            title:
            const Text(
                'When stopping'
            ),
            leading: Radio<WhenSqueal>(
              value: WhenSqueal.Stopping,
              toggleable: true,
              groupValue: whenSqueal,
              onChanged: (WhenSqueal? value){
                whenSqueal = WhenSqueal.Stopping;
                setState(() {
                  whenSqueal = value!;
                });
              },
            ),
          ),
          ListTile(
            title:
            const Text(
                'Only when I start the vehicle'
            ),
            leading: Radio<WhenSqueal>(
              value: WhenSqueal.Starting,
              toggleable: true,
              groupValue: whenSqueal,
              onChanged: (WhenSqueal? value){
                whenSqueal = WhenSqueal.Starting;
                setState(() {
                  whenSqueal = value!;
                });
              },
            ),
          ),
          ListTile(
            title:
            const Text(
                'Only when turning'
            ),
            leading: Radio<WhenSqueal>(
              value: WhenSqueal.Turning,
              toggleable: true,
              groupValue: whenSqueal,
              onChanged: (WhenSqueal? value){
                whenSqueal = WhenSqueal.Turning;
                setState(() {
                  whenSqueal = value!;
                });
              },
            ),
          ),
          ListTile(
            title:
            const Text(
                'Only when the vehicle is moving'
            ),
            leading: Radio<WhenSqueal>(
              value: WhenSqueal.Moving,
              toggleable: true,
              groupValue: whenSqueal,
              onChanged: (WhenSqueal? value){
                whenSqueal = WhenSqueal.Moving;
                setState(() {
                  whenSqueal = value!;
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

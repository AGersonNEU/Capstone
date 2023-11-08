import 'package:capstone/DiagnoseResultsPage/diagnose_results_main_page.dart';
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
            MaterialPageRoute(builder: (context) => const DiagnoseResultsPage()));
      case WhenSqueal.Stopping:
        // TODO: Handle this case.
      case WhenSqueal.Starting:
        // TODO: Handle this case.
      case WhenSqueal.Turning:
        // TODO: Handle this case.
      case WhenSqueal.Moving:
        // TODO: Handle this case.
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

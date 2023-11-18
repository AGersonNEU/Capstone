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
                    diagnose_info: 'As the timing belt synchronizes engine processes, '
                        'the serpentine belt powers peripheral processes in the engine '
                        'compartment, like the power steering pump, water pump, cooling '
                        'fan, air conditioner, and alternator. The serpentine belt receives '
                        'its name from the snake-like path it takes through the various '
                        'steering and electrical components it powers. Belt tension also '
                        'plays an important role in serpentine belt maintenance. A properly '
                        'tensioned belt helps promote long belt life while ensuring that all '
                        'components are not overloaded or strained during operation. Serpentine '
                        'belts are tough, built to sustain years of continued and heavy use, '
                        'but they do have a natural life projected by every manufacturer. '
                        'Periodic inspections of your serpentine belt will help prevent breakdowns, '
                        'though replacing your serpentine belt is a natural part of overall car '
                        'maintenance. If you suspect trouble with your serpentine belt, '
                        'please give us a call or contact us for assistance.',
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
                    diagnose_info: 'As the timing belt synchronizes engine processes, '
                        'the serpentine belt powers peripheral processes in the engine '
                        'compartment, like the power steering pump, water pump, cooling '
                        'fan, air conditioner, and alternator. The serpentine belt receives '
                        'its name from the snake-like path it takes through the various '
                        'steering and electrical components it powers. Belt tension also '
                        'plays an important role in serpentine belt maintenance. A properly '
                        'tensioned belt helps promote long belt life while ensuring that all '
                        'components are not overloaded or strained during operation. Serpentine '
                        'belts are tough, built to sustain years of continued and heavy use, '
                        'but they do have a natural life projected by every manufacturer. '
                        'Periodic inspections of your serpentine belt will help prevent breakdowns, '
                        'though replacing your serpentine belt is a natural part of overall car '
                        'maintenance. If you suspect trouble with your serpentine belt, '
                        'please give us a call or contact us for assistance.',
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
                    diagnose_info: 'The timing belt, or timing chain in some vehicles, is a drive belt that synchronizes the rotation'
                        ' of the engine’s crankshaft and camshaft with the opening and closing of your engine’s valves. Depending on the'
                        ' vehicle, it may also rotate the water pump. When the crankshaft turns, the timing belt turns the camshaft, which'
                        ' opens and closes the engine valves to allow the pistons to move up and down. Your vehicle’s engine operates in four'
                        ' phases: intake, compression, combustion, and exhaust. During the intake phase, intake valves open and exhaust valves'
                        ' close as fuel and air enter the cylinders. As the air and fuel is mixed, compressed, and ignited by spark plugs during'
                        ' the compression and combustion phases, the valves close. The remaining air and fuel is pushed out of the exhaust valve'
                        ' during the exhaust phase. The timing belt is responsible for synchronizing this process and for opening and closing valves'
                        ' during normal engine operation.',
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

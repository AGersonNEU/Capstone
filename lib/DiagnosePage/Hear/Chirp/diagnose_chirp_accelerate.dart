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
                    diagnose_info: 'Universal joints, often referred to as u-joints, are flexible couplings that serve an important role '
                        'on your vehicle. One of the primary duties of a u-joint is to transmit the rotational force between the transmission, '
                        'the driveshaft, and the differentials, which are responsible for turning your vehicle’s drive wheels. As a critical '
                        'linking component, a u-joint should be flexible enough to compensate for angle and alignment changes between the '
                        'driveshaft and differentials. U-joints consist of four legs, or trunnions, that extend from the center cross, or body. '
                        'The legs are covered with bearing caps and are housed within the yoke, which is designed to pivot and spin as they '
                        'rotate with the driveshaft. Although many original equipment u-joints are sealed, some aftermarket u-joints are '
                        'greasable and should be lubricated periodically. Understanding the type of u-joints on your vehicle will help you '
                        'determine the proper maintenance intervals and decide when a u-joint should be replaced.',
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

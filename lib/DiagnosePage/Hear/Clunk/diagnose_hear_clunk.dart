import 'package:capstone/DiagnosePage/Hear/Clunk/diagnose_hear_clunk_bump.dart';
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
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WhereDoYouHearTheClunkBump())
        );
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
                  diagnose_info: 'The CV axle is a drive axle located between the drive wheels. Its role is to deliver consistent power'
                      ' to the wheels as they traverse various types of terrain. The CV axle is attached to the wheels by CV joints.'
                      ' The inner CV joints connect the transmission to the CV axle while the outer CV joints connect the CV axle to '
                      'the wheels. The CV joints connect the CV axle to the wheels, and deliver power while maintaining a constant velocity. '
                      'The CV axle assembly—the axle shaft, CV joints, and CV boots—is designed to deliver flexible power to the wheels. '
                      'This means that the axle is able to transmit required levels of torque to the wheels regardless of the angle of the axle. '
                      'At first, CV axles were commonly used in front-wheel drive vehicles, but today CV axles are also common in rear-wheel drive vehicles.',
                ),
                DiagnosisResultMini(
                  part_name: 'U Joint',
                  service: 'U-Joint Replacement',
                  diagnose_title: 'Worn or Damaged Universal Joints',
                  diagnose_info: 'Universal joints, often referred to as u-joints, are flexible couplings that serve an important role on your'
                      ' vehicle. One of the primary duties of a u-joint is to transmit the rotational force between the transmission, the driveshaft,'
                      ' and the differentials, which are responsible for turning your vehicle’s drive wheels. As a critical linking component, a u-joint'
                      ' should be flexible enough to compensate for angle and alignment changes between the driveshaft and differentials. U-joints consist'
                      ' of four legs, or trunnions, that extend from the center cross, or body. The legs are covered with bearing caps and are housed within'
                      ' the yoke, which is designed to pivot and spin as they rotate with the driveshaft. Although many original equipment u-joints are '
                      'sealed, some aftermarket u-joints are greasable and should be lubricated periodically. Understanding the type of u-joints on your'
                      ' vehicle will help you determine the proper maintenance intervals and decide when a u-joint should be replaced.',
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
                'When turning'
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
          ListTile(
            title:
            const Text(
                'When going over bumps'
            ),
            leading: Radio<WhenClunk>(
              value: WhenClunk.Bumps,
              toggleable: true,
              groupValue: whenClunk,
              onChanged: (WhenClunk? value){
                whenClunk = WhenClunk.Bumps;
                setState(() {
                  whenClunk = value!;
                });
              },
            ),
          ),
          ListTile(
            title:
            const Text(
                'When putting the vehicle into gear'
            ),
            leading: Radio<WhenClunk>(
              value: WhenClunk.Gear,
              toggleable: true,
              groupValue: whenClunk,
              onChanged: (WhenClunk? value){
                whenClunk = WhenClunk.Gear;
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

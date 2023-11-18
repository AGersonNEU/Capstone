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
                    diagnose_info: 'The primary function of your vehicle’s suspension system is to provide structural support while maintaining'
                        ' comfortable riding conditions. The suspension system helps your vehicle’s tires maintain firm contact on the road at'
                        ' all times by compensating for bumps, potholes, and sudden undulations. Suspension system components like coil springs,'
                        ' leaf springs, torsion bars, shocks, and struts all help to absorb bounce, shock, and unexpected motion from the surface'
                        ' of the road. Without a fully functioning suspension system, your vehicle will be harder to control. Because regular wear'
                        ' and tear takes its toll on your suspension system, the scheduling of routine repairs and an understanding of the signs '
                        'of an impending service are an important part of suspension system maintenance. For example, experiencing unusual movements '
                        'over bumps or through turns are signs that your suspension system should be inspected by a staff of professionals',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Strut Assembly',
                    service: 'Struts Replacement',
                    diagnose_title: 'Worn Struts',
                    diagnose_info: 'While the function of shocks and struts is very similar, the biggest difference is in how they mount '
                        'to your vehicle. Shocks function in addition to other suspension components, while struts are designed as a pivot '
                        'point for the steering mechanism. Struts behave as a dampening device that absorbs excessive bounce. The strut assembly '
                        'combines coil springs, spring seats, strut bearings, and shock absorbers into one working unit. The steering arm or '
                        'steering knuckle is also included in some strut designs. Struts use a piston to absorb high lateral loads. The spring '
                        'seat and strut bearing allow the shock to pivot with the front wheels and the steering mechanism. Struts and accompanying '
                        'suspension components help push tires back into place when one leaves the road. Overall, struts work in conjunction with '
                        'the rest of the suspension system to help stabilize the vehicle while maintaining a comfortable and safe ride.',
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
                    diagnose_info: 'The primary function of your vehicle’s suspension system is to provide structural support while'
                        ' maintaining comfortable riding conditions. The suspension system helps your vehicle’s tires maintain firm'
                        ' contact on the road at all times by compensating for bumps, potholes, and sudden undulations. Suspension '
                        'system components like coil springs, leaf springs, torsion bars, shocks, and struts all help to absorb'
                        ' bounce, shock, and unexpected motion from the surface of the road. Without a fully functioning suspension '
                        'system, your vehicle will be harder to control. Because regular wear and tear takes its toll on your suspension '
                        'system, the scheduling of routine repairs and an understanding of the signs of an impending service are an '
                        'important part of suspension system maintenance.',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Shock',
                    service: 'Shocks Replacement',
                    diagnose_title: 'Worn out Shocks. Struts',
                    diagnose_info: 'Shock absorbers are components in your vehicle’s suspension system that help your tires remain'
                        ' in contact with the surface of the road. They dampen the impact of road force and absorb the rebound of '
                        'springs and other suspension components. Front and rear shocks are designed to adjust to driving conditions, '
                        'like bumps, potholes, and sudden maneuvers. They also reduce bounce rate, sway, and brake dive or acceleration '
                        'squat. Modern day shocks are velocity-sensitive, which means that the faster the springs and other suspension '
                        'components are moving, the more resistance provided by the shocks. Hydraulic shocks convert kinetic energy from '
                        'the springs into thermal energy that the hydraulic fluid inside each shock absorbs and dissipates. When the suspension '
                        'system bounces, hydraulic fluid is forced through holes inside the piston. This slows the compression of the piston, '
                        'thereby slowing down spring and suspension movement. While hydraulic and gas shocks are the most common types of '
                        'shocks used on vehicles today, some vehicles also use electronic and air shocks.',
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

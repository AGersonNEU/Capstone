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
                    diagnose_info: 'Regardless of the type of steering system in your vehicle, you use inner and outer tie rods. '
                        'As an important part of your vehicle’s steering and suspension system, tie rods act as the link between '
                        'your vehicle’s steering system and the steering arm, which is attached to the steering wheel. When you '
                        'turn the steering wheel, the steering arm moves the front wheels through the steering system. The inner '
                        'and outer tie rods connect to the steering arm in order to move the wheels of your vehicle. In the common '
                        'rack-and-pinion steering system, the inner tie rods connect to the steering rack while the outer tie rods '
                        'connect to the steering arms. The tie rods make steering and turning possible by moving your wheels in the '
                        'desired direction. Without properly functioning tie rods, the steering mechanism would no longer operate as '
                        'intended. Because inner and outer tie rods play such a significant role, replacing tie rods as necessary is '
                        'important for overall vehicle maintenance.',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Ball Joint',
                    service: 'Ball Joint Replacement',
                    diagnose_title: "Worn or 'Dry' Ball Joint",
                    diagnose_info: 'The suspension system allows your tires to maintain constant contact with the road, especially'
                        ' on uneven surfaces like bumps and potholes. Ball joints are ball-and-socket joints located between the '
                        'control arm and the steering knuckle. Ball joints act as the pivot point between the wheels and the rest '
                        'of the suspension system. They are designed to allow for movement in two planes at once while providing '
                        'ease of rotation in those planes. They allow a vehicle’s suspension system to move up or down while the '
                        'wheels turn left or right. Vehicles with shocks have upper and lower ball joints, while many vehicles with '
                        'struts have only lower ball joints. Some ball joints are load-bearing and will wear faster than normal ball '
                        'joints. As an important suspension component, ball joints are designed to experience wear and tear, often in '
                        'the form of friction. Like all suspension system components, ball joints have a maintenance schedule that can '
                        'help prevent unexpected repairs or replacements.',
                  ),
                  DiagnosisResultMini(
                    part_name: 'C-V Axle',
                    service: 'CV Axle Replacement',
                    diagnose_title: 'Axle Assembly Failure',
                    diagnose_info: 'The CV axle is a drive axle located between the drive wheels. Its role is to deliver consistent power'
                        ' to the wheels as they traverse various types of terrain. The CV axle is attached to the wheels by CV joints. '
                        'The inner CV joints connect the transmission to the CV axle while the outer CV joints connect the CV axle to '
                        'the wheels. The CV joints connect the CV axle to the wheels, and deliver power while maintaining a constant velocity. '
                        'The CV axle assembly—the axle shaft, CV joints, and CV boots—is designed to deliver flexible power to the wheels. '
                        'This means that the axle is able to transmit required levels of torque to the wheels regardless of the angle of the '
                        'axle. At first, CV axles were commonly used in front-wheel drive vehicles, but today CV axles are also common in '
                        'rear-wheel drive vehicles.',
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
                    diagnose_info: 'Regardless of the type of steering system in your vehicle, you use inner and outer tie rods. '
                        'As an important part of your vehicle’s steering and suspension system, tie rods act as the link between '
                        'your vehicle’s steering system and the steering arm, which is attached to the steering wheel. When you '
                        'turn the steering wheel, the steering arm moves the front wheels through the steering system. The inner '
                        'and outer tie rods connect to the steering arm in order to move the wheels of your vehicle. In the common '
                        'rack-and-pinion steering system, the inner tie rods connect to the steering rack while the outer tie rods '
                        'connect to the steering arms. The tie rods make steering and turning possible by moving your wheels in the '
                        'desired direction. Without properly functioning tie rods, the steering mechanism would no longer operate as '
                        'intended. Because inner and outer tie rods play such a significant role, replacing tie rods as necessary is '
                        'important for overall vehicle maintenance.',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Ball Joint',
                    service: 'Ball Joint Replacement',
                    diagnose_title: "Worn or 'Dry' Ball Joint",
                    diagnose_info: 'The suspension system allows your tires to maintain constant contact with the road, especially'
                        ' on uneven surfaces like bumps and potholes. Ball joints are ball-and-socket joints located between the '
                        'control arm and the steering knuckle. Ball joints act as the pivot point between the wheels and the rest '
                        'of the suspension system. They are designed to allow for movement in two planes at once while providing '
                        'ease of rotation in those planes. They allow a vehicle’s suspension system to move up or down while the '
                        'wheels turn left or right. Vehicles with shocks have upper and lower ball joints, while many vehicles with '
                        'struts have only lower ball joints. Some ball joints are load-bearing and will wear faster than normal ball '
                        'joints. As an important suspension component, ball joints are designed to experience wear and tear, often in '
                        'the form of friction. Like all suspension system components, ball joints have a maintenance schedule that can '
                        'help prevent unexpected repairs or replacements.',
                  ),
                  DiagnosisResultMini(
                    part_name: 'C-V Axle',
                    service: 'CV Axle Replacement',
                    diagnose_title: 'Axle Assembly Failure',
                    diagnose_info: 'The CV axle is a drive axle located between the drive wheels. Its role is to deliver consistent power'
                        ' to the wheels as they traverse various types of terrain. The CV axle is attached to the wheels by CV joints. '
                        'The inner CV joints connect the transmission to the CV axle while the outer CV joints connect the CV axle to '
                        'the wheels. The CV joints connect the CV axle to the wheels, and deliver power while maintaining a constant velocity. '
                        'The CV axle assembly—the axle shaft, CV joints, and CV boots—is designed to deliver flexible power to the wheels. '
                        'This means that the axle is able to transmit required levels of torque to the wheels regardless of the angle of the '
                        'axle. At first, CV axles were commonly used in front-wheel drive vehicles, but today CV axles are also common in '
                        'rear-wheel drive vehicles.',
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
                    diagnose_info: 'Regardless of the type of steering system in your vehicle, you use inner and outer tie rods. '
                        'As an important part of your vehicle’s steering and suspension system, tie rods act as the link between '
                        'your vehicle’s steering system and the steering arm, which is attached to the steering wheel. When you '
                        'turn the steering wheel, the steering arm moves the front wheels through the steering system. The inner '
                        'and outer tie rods connect to the steering arm in order to move the wheels of your vehicle. In the common '
                        'rack-and-pinion steering system, the inner tie rods connect to the steering rack while the outer tie rods '
                        'connect to the steering arms. The tie rods make steering and turning possible by moving your wheels in the '
                        'desired direction. Without properly functioning tie rods, the steering mechanism would no longer operate as '
                        'intended. Because inner and outer tie rods play such a significant role, replacing tie rods as necessary is '
                        'important for overall vehicle maintenance.',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Ball Joint',
                    service: 'Ball Joint Replacement',
                    diagnose_title: "Worn or 'Dry' Ball Joint",
                    diagnose_info: 'The suspension system allows your tires to maintain constant contact with the road, especially'
                        ' on uneven surfaces like bumps and potholes. Ball joints are ball-and-socket joints located between the '
                        'control arm and the steering knuckle. Ball joints act as the pivot point between the wheels and the rest '
                        'of the suspension system. They are designed to allow for movement in two planes at once while providing '
                        'ease of rotation in those planes. They allow a vehicle’s suspension system to move up or down while the '
                        'wheels turn left or right. Vehicles with shocks have upper and lower ball joints, while many vehicles with '
                        'struts have only lower ball joints. Some ball joints are load-bearing and will wear faster than normal ball '
                        'joints. As an important suspension component, ball joints are designed to experience wear and tear, often in '
                        'the form of friction. Like all suspension system components, ball joints have a maintenance schedule that can '
                        'help prevent unexpected repairs or replacements.',
                  ),
                  DiagnosisResultMini(
                    part_name: 'C-V Axle',
                    service: 'CV Axle Replacement',
                    diagnose_title: 'Axle Assembly Failure',
                    diagnose_info: 'The CV axle is a drive axle located between the drive wheels. Its role is to deliver consistent power'
                        ' to the wheels as they traverse various types of terrain. The CV axle is attached to the wheels by CV joints. '
                        'The inner CV joints connect the transmission to the CV axle while the outer CV joints connect the CV axle to '
                        'the wheels. The CV joints connect the CV axle to the wheels, and deliver power while maintaining a constant velocity. '
                        'The CV axle assembly—the axle shaft, CV joints, and CV boots—is designed to deliver flexible power to the wheels. '
                        'This means that the axle is able to transmit required levels of torque to the wheels regardless of the angle of the '
                        'axle. At first, CV axles were commonly used in front-wheel drive vehicles, but today CV axles are also common in '
                        'rear-wheel drive vehicles.',
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
              value: WhenClunkTurning.Right,
              toggleable: true,
              groupValue: whenClunkTurning,
              onChanged: (WhenClunkTurning? value){
                whenClunkTurning = WhenClunkTurning.Right;
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
              value: WhenClunkTurning.IDK,
              toggleable: true,
              groupValue: whenClunkTurning,
              onChanged: (WhenClunkTurning? value){
                whenClunkTurning = WhenClunkTurning.IDK;
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

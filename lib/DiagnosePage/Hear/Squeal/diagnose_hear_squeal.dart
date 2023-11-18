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
                    diagnose_info: 'Brakes use friction to bring a vehicle to a '
                        'complete stop. This friction creates a substantial amount '
                        'of heat that can degrade the brakes and brake components '
                        'over time. As a result, inspecting these components and '
                        'ensuring proper operation has become a critical part of '
                        'overall vehicle maintenance. Although brake systems vary '
                        'from vehicle to vehicle, the responsibility and importance '
                        'of the components remains the same. Today, some common brake '
                        'types include drum and disc brakes. Drum brakes contain '
                        'brake shoes, drums, wheel cylinders, springs, and self-adjusters. '
                        'Disc brakes contain brake pads, rotors, calipers, and '
                        'hydraulic components. Depending on the design of the rear '
                        'brake system, the parking brake assembly, which keeps the '
                        'vehicle from rolling once stopped, can be housed in either '
                        'a drum or rotor. All of these components, including the brake '
                        'pedal and brake fluid, should be checked during a brake inspection '
                        'service to help ensure that a vehicle is safe to operate.',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Brake Pad / Brake Rotor / Brake Caliper',
                    service: 'Front Disc Brake Repair',
                    diagnose_title: 'Brake Pad Quality and Rotor Finish',
                    diagnose_info: 'In the brake systems of modern vehicles, disc brakes are used in both the front and rear of the vehicle. '
                        'Front disc brake systems contain brake pads, calipers, rotors, and hydraulic components. In a disc brake system, '
                        'the rotor is mounted to the wheel hub, and calipers are responsible for squeezing the brake pads against the disc '
                        'in order to slow the speed of the turning rotor and bring the vehicle to a complete stop. Because front disc brake '
                        'systems convert kinetic energy into heat, ventilation slots, holes, or vanes are necessary for expelling heat from '
                        'the brake system. While the brake pads are already designed to withstand heat, excessive amounts of heat are still '
                        'damaging to the pads as well as other disc brake components. Brake systems that use disc brakes are known to '
                        'possess strong stopping power. Like all brake systems, however, disc brakes will wear over time. This is why routine '
                        'maintenance is extremely important.',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Brake Pad / Brake Rotor / Brake Caliper',
                    service: 'Front Disc Brake Repair',
                    diagnose_title: 'Worn Brake Pads',
                    diagnose_info: 'In the brake systems of modern vehicles, disc brakes are used in both the front and rear of the vehicle. '
                        'Front disc brake systems contain brake pads, calipers, rotors, and hydraulic components. In a disc brake system, '
                        'the rotor is mounted to the wheel hub, and calipers are responsible for squeezing the brake pads against the disc '
                        'in order to slow the speed of the turning rotor and bring the vehicle to a complete stop. Because front disc brake '
                        'systems convert kinetic energy into heat, ventilation slots, holes, or vanes are necessary for expelling heat from '
                        'the brake system. While the brake pads are already designed to withstand heat, excessive amounts of heat are still '
                        'damaging to the pads as well as other disc brake components. Brake systems that use disc brakes are known to '
                        'possess strong stopping power. Like all brake systems, however, disc brakes will wear over time. This is why routine '
                        'maintenance is extremely important.',
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
                  ),
                  DiagnosisResultMini(
                    part_name: 'Power Steering Pump',
                    service: 'Power Steering Pump Replacement',
                    diagnose_title: 'Faulty Power Steering Pump',
                    diagnose_info: 'The steering and suspension system on your vehicle is responsible for maintaining comfortable riding conditions'
                        ' and driving performance. The steering and suspension system also helps drivers remain in control of their vehicles at all '
                        'times. The suspension system converts forward energy created by bumps in the road into vertical energy that travels up into '
                        'the vehicle frame. Suspension system components, like coil springs and shock absorbers, help to dampen the impact of this '
                        'road force. While the individual components comprising each suspension system may vary, all suspension system components will '
                        'weaken over time through stress applied during normal driving conditions. Similarly, off-road driving and erratic driving can '
                        'wear down suspension components more quickly. Regardless of your driving preferences, we have the necessary equipment to '
                        'identify and correct any issue plaguing your steering and suspension system. Our staff is trained to inspect the steering'
                        ' and suspension components in order to determine whether your service will entail a minor adjustment or a replacement.',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Power Steering Pump',
                    service: 'suspension and Steering System Repair',
                    diagnose_title: 'Low Power Steering Fluid',
                    diagnose_info: 'The steering and suspension system on your vehicle is responsible for maintaining comfortable riding conditions '
                        'and driving performance. The steering and suspension system also helps drivers remain in control of their vehicles at all '
                        'times. The suspension system converts forward energy created by bumps in the road into vertical energy that travels up into '
                        'the vehicle frame. Suspension system components, like coil springs and shock absorbers, help to dampen the impact of this '
                        'road force. While the individual components comprising each suspension system may vary, all suspension system components '
                        'will weaken over time through stress applied during normal driving conditions. Similarly, off-road driving and erratic driving '
                        'can wear down suspension components more quickly. Regardless of your driving preferences, we have the necessary equipment to '
                        'identify and correct any issue plaguing your steering and suspension system. Our staff is trained to inspect the steering and '
                        'suspension components in order to determine whether your service will entail a minor adjustment or a replacement.',
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
                    diagnose_info: 'Brakes use friction to bring a vehicle to a '
                        'complete stop. This friction creates a substantial amount '
                        'of heat that can degrade the brakes and brake components '
                        'over time. As a result, inspecting these components and '
                        'ensuring proper operation has become a critical part of '
                        'overall vehicle maintenance. Although brake systems vary '
                        'from vehicle to vehicle, the responsibility and importance '
                        'of the components remains the same. Today, some common brake '
                        'types include drum and disc brakes. Drum brakes contain '
                        'brake shoes, drums, wheel cylinders, springs, and self-adjusters. '
                        'Disc brakes contain brake pads, rotors, calipers, and '
                        'hydraulic components. Depending on the design of the rear '
                        'brake system, the parking brake assembly, which keeps the '
                        'vehicle from rolling once stopped, can be housed in either '
                        'a drum or rotor. All of these components, including the brake '
                        'pedal and brake fluid, should be checked during a brake inspection '
                        'service to help ensure that a vehicle is safe to operate.',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Brake Pad / Brake Rotor / Brake Caliper',
                    service: 'Front Disc Brake Repair',
                    diagnose_title: 'Brake Pad Quality and Rotor Finish',
                    diagnose_info: 'In the brake systems of modern vehicles, disc brakes are used in both the front and rear of the vehicle. '
                        'Front disc brake systems contain brake pads, calipers, rotors, and hydraulic components. In a disc brake system, '
                        'the rotor is mounted to the wheel hub, and calipers are responsible for squeezing the brake pads against the disc '
                        'in order to slow the speed of the turning rotor and bring the vehicle to a complete stop. Because front disc brake '
                        'systems convert kinetic energy into heat, ventilation slots, holes, or vanes are necessary for expelling heat from '
                        'the brake system. While the brake pads are already designed to withstand heat, excessive amounts of heat are still '
                        'damaging to the pads as well as other disc brake components. Brake systems that use disc brakes are known to '
                        'possess strong stopping power. Like all brake systems, however, disc brakes will wear over time. This is why routine '
                        'maintenance is extremely important.',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Brake Pad / Brake Rotor / Brake Caliper',
                    service: 'Front Disc Brake Repair',
                    diagnose_title: 'Worn Brake Pads',
                    diagnose_info: 'In the brake systems of modern vehicles, disc brakes are used in both the front and rear of the vehicle. '
                        'Front disc brake systems contain brake pads, calipers, rotors, and hydraulic components. In a disc brake system, '
                        'the rotor is mounted to the wheel hub, and calipers are responsible for squeezing the brake pads against the disc '
                        'in order to slow the speed of the turning rotor and bring the vehicle to a complete stop. Because front disc brake '
                        'systems convert kinetic energy into heat, ventilation slots, holes, or vanes are necessary for expelling heat from '
                        'the brake system. While the brake pads are already designed to withstand heat, excessive amounts of heat are still '
                        'damaging to the pads as well as other disc brake components. Brake systems that use disc brakes are known to '
                        'possess strong stopping power. Like all brake systems, however, disc brakes will wear over time. This is why routine '
                        'maintenance is extremely important.',
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

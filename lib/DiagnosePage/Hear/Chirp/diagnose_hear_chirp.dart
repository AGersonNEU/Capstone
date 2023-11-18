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
                    diagnose_info: 'Brakes use friction to bring a vehicle to a complete stop. This friction creates a substantial '
                        'amount of heat that can degrade the brakes and brake components over time. As a result, inspecting these '
                        'components and ensuring proper operation has become a critical part of overall vehicle maintenance. Although '
                        'brake systems vary from vehicle to vehicle, the responsibility and importance of the components remains the '
                        'same. Today, some common brake types include drum and disc brakes. Drum brakes contain brake shoes, drums, '
                        'wheel cylinders, springs, and self-adjusters. Disc brakes contain brake pads, rotors, calipers, and hydraulic '
                        'components. Depending on the design of the rear brake system, the parking brake assembly, which keeps the vehicle '
                        'from rolling once stopped, can be housed in either a drum or rotor. All of these components, including the '
                        'brake pedal and brake fluid, should be checked during a brake inspection service to help ensure that a vehicle '
                        'is safe to operate.',
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
                        'damaging to the pads as well as other disc brake components. Brake systems that use disc brakes are known to possess '
                        'strong stopping power. Like all brake systems, however, disc brakes will wear over time. This is why routine maintenance '
                        'is extremely important.',
                  ),
                  DiagnosisResultMini(
                    part_name: 'Brake Pad / Brake Rotor / Brake Caliper',
                    service: 'Front Disc Brake Repair',
                    diagnose_title: 'Worn Brake Pads',
                    diagnose_info: 'In the brake systems of modern vehicles, disc brakes are used in both the front and rear of the vehicle. '
                        'Front disc brake systems contain brake pads, calipers, rotors, and hydraulic components. In a disc brake system, the '
                        'rotor is mounted to the wheel hub, and calipers are responsible for squeezing the brake pads against the disc in order '
                        'to slow the speed of the turning rotor and bring the vehicle to a complete stop. Because front disc brake systems '
                        'convert kinetic energy into heat, ventilation slots, holes, or vanes are necessary for expelling heat from the brake '
                        'system. While the brake pads are already designed to withstand heat, excessive amounts of heat are still damaging to '
                        'the pads as well as other disc brake components. Brake systems that use disc brakes are known to possess strong '
                        'stopping power. Like all brake systems, however, disc brakes will wear over time. This is why routine maintenance '
                        'is extremely important.',
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

import 'package:capstone/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../PartsPage/parts_main_page.dart';
import '../VideoPage/video_main_page.dart';
import '../global_variables.dart';

class DiagnosisInformation extends StatefulWidget {
  const DiagnosisInformation({super.key});

  @override
  State<DiagnosisInformation> createState() => _DiagnosisInformationState();
}

class _DiagnosisInformationState extends State<DiagnosisInformation> {



  //save this diagnosis to database
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
        SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                BackButtonCar(),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 40, 10, 10),
                  child:
                     Center(
                       child:
                        Text(
                         'Loose or Worn \n Drive Belt',
                         softWrap: true,
                         overflow: TextOverflow.visible,
                         maxLines: 2,
                         style:
                         TextStyle(
                           fontSize: 30,
                           fontWeight: FontWeight.bold,

                         ),
                       ),
                     ),
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child:
                Text(
                  'As the timing belt synchronizes engine processes, the serpentine belt powers '
                      'peripheral processes in the engine compartment, like the power steering pump, '
                      'water pump, cooling fan, air conditioner, and alternator. The serpentine belt receives '
                      'its name from the snake-like path it takes through the various steering and electrical '
                      'components it powers. Belt tension also plays an important role in serpentine belt maintenance. '
                      'A properly tensioned belt helps promote long belt life while ensuring that all components are not overloaded '
                      'or strained during operation. Serpentine belts are tough, built to sustain years of continued and heavy use, '
                      'but they do have a natural life projected by every manufacturer. Periodic inspections of your serpentine belt '
                      'will help prevent breakdowns, though replacing your serpentine belt is a natural part of overall car maintenance. '
                      'If you suspect trouble with your serpentine belt, please give us a call or contact us for assistance.',
                  style:
                  TextStyle(
                      fontSize: 20
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

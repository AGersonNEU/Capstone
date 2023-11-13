import 'package:capstone/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../PartsPage/parts_main_page.dart';
import '../VideoPage/video_main_page.dart';
import '../global_variables.dart';

class DiagnosisInformation extends StatefulWidget {
  final String diagnoseTitle;
  final String info;
  const DiagnosisInformation({super.key, required this.info, required this.diagnoseTitle});

  @override
  State<DiagnosisInformation> createState() => _DiagnosisInformationState(info, diagnoseTitle);
}

class _DiagnosisInformationState extends State<DiagnosisInformation> {
  late String diagnosis_info;
  late String diagnosis_title;

  _DiagnosisInformationState(String info, String diagnoseTitle){
    diagnosis_info = info;
    diagnosis_title = diagnoseTitle;
  }

  //save this diagnosis to database
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const BackButtonCar(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 40, 10, 10),
                  child:
                     Center(
                       child:
                        Text(
                         diagnosis_title.toString() ?? '',
                         softWrap: true,
                         overflow: TextOverflow.visible,
                         maxLines: 2,
                         style:
                         const TextStyle(
                           fontSize: 30,
                           fontWeight: FontWeight.bold,

                         ),
                       ),
                     ),
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child:
                Text(
                  diagnosis_info,
                  style:
                  const TextStyle(
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

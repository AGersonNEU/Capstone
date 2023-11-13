import 'package:capstone/DiagnoseResultsPage/_diagnose_results_info.dart';
import 'package:capstone/DiagnoseResultsPage/diagnosis_condensed_view.dart';
import 'package:capstone/PartsPage/parts_main_page.dart';
import 'package:capstone/VideoPage/video_main_page.dart';
import 'package:capstone/back_button.dart';
import 'package:capstone/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiagnoseResultsPage extends StatefulWidget {
  final allDiagnosis;
  const DiagnoseResultsPage({
    super.key,
    this.allDiagnosis
  });

  @override
  State<DiagnoseResultsPage> createState() => _DiagnoseResultsPageState(allDiagnosis);
}

class _DiagnoseResultsPageState extends State<DiagnoseResultsPage> {
Widget all_diagnosis = Column();

  _DiagnoseResultsPageState(allDiagnosis){
    all_diagnosis = allDiagnosis;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Center(
          child:
            Column(
              children: [
                const Row(
                  children: [
                    BackButtonCar(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                      child:
                      Text(
                        'Car Diagnosis',
                        style:
                        TextStyle(
                            fontSize: 40
                        ),
                      ),
                    )
                  ],
                ),
                all_diagnosis
              ],
            ),
        ),
    );
  }
}

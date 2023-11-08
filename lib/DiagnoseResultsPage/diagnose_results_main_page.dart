import 'package:capstone/DiagnoseResultsPage/_diagnose_results_info.dart';
import 'package:capstone/DiagnoseResultsPage/diagnosis_condensed_view.dart';
import 'package:capstone/PartsPage/parts_main_page.dart';
import 'package:capstone/VideoPage/video_main_page.dart';
import 'package:capstone/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiagnoseResultsPage extends StatefulWidget {

  const DiagnoseResultsPage({super.key});

  @override
  State<DiagnoseResultsPage> createState() => _DiagnoseResultsPageState();
}

class _DiagnoseResultsPageState extends State<DiagnoseResultsPage> {



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
        Center(
          child:
            Column(
              children: [
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                    child:
                      Text(
                        'Car Diagnosis',
                        style:
                          TextStyle(
                            fontSize: 40
                          ),
                      ),
                ),
                DiagnosisResultMini()
              ],
            ),
        ),
    );
  }
}

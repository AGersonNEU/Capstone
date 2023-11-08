import 'package:capstone/DiagnoseResultsPage/_diagnose_results_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../PartsPage/parts_main_page.dart';
import '../VideoPage/video_main_page.dart';
import '../global_variables.dart';

class DiagnosisResultMini extends StatefulWidget {
  const DiagnosisResultMini({super.key});

  @override
  State<DiagnosisResultMini> createState() => _DiagnosisResultMiniState();
}

class _DiagnosisResultMiniState extends State<DiagnosisResultMini> {
  void _diagnoseResults(){
    GlobalVariables.part_name = 'Serentine Belt';
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PartsPage())
    );
  }


  void _VideoPage(){
    GlobalVariables.video_search = '2008 PT cruiser serpentine belt replacement';
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const VideoPage())
    );
  }

  void _diagnoseInfo(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DiagnosisInformation())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child:
        Container(
            decoration:
            BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFEFF4F7),
            ),
            child:
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child:
                      TextButton(
                          onPressed: _diagnoseInfo,
                          child:
                            const Text(
                              'Loose or Worn Drive Belt',
                              style:
                              TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                      )
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child:
                      TextButton(
                          onPressed: _diagnoseResults,
                          child:
                          const Text(
                            'Parts',
                            style:
                            TextStyle(
                                fontSize: 20,
                                color: Color(0xFF7c93a1)
                            ),
                          )
                      ),
                    ),
                    Center(
                      child:
                      TextButton(
                          onPressed: _VideoPage,
                          child:
                          const Text(
                            'Videos',
                            style:
                            TextStyle(
                                fontSize: 20,
                                color: Color(0xFF7c93a1)
                            ),
                          )
                      ),
                    )
                  ],
                )
              ],
            )
        )
    );
  }
}

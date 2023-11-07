import 'package:capstone/DiagnosePage/diagnose_answer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../DiagnoseResultsPage/diagnose_results_main_page.dart';

class DiagnosisQuestion extends StatefulWidget {
  const DiagnosisQuestion({super.key});

  @override
  State<DiagnosisQuestion> createState() => _DiagnosisQuestionState();
}

class _DiagnosisQuestionState extends State<DiagnosisQuestion> {

  void _back (){
    Navigator.pop(
        context
    );
  }

  void _next(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DiagnosisQuestion()));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child:
          Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 5),
              child:
              Text(
                'Where is the noise coming from?',
                style:
                TextStyle(
                    fontSize: 20
                ),
              )
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child:
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child:
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child:
                            ElevatedButton(
                            onPressed: _back,
                            style:
                            ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFB2C9D6),
                              shadowColor: const Color(0xFF1E1F1E),
                            ),
                            child:
                            const Text(
                              'back',
                              style:
                              TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFF6F9FA)
                              ),
                            ),
                          ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child:
                          ElevatedButton(
                            onPressed: _next,
                            style:
                            ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFB2C9D6),
                              shadowColor: const Color(0xFF1E1F1E),
                            ),
                            child:
                            const Text(
                              'next',
                              style:
                              TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFF6F9FA)
                              ),
                            ),
                          ),
                      )
                    ],
                  ),
              )

        )
      ],
    );
  }
}

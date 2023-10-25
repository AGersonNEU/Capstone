import 'package:capstone/DiagnosePage/car_search.dart';
import 'package:capstone/DiagnosePage/diagnosis_question.dart';
import 'package:capstone/DiagnoseResultsPage/diagnose_results_main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../HomePage/home_bottom_navbar.dart';

class DiagnosePage extends StatefulWidget {
  const DiagnosePage({super.key});

  @override
  State<DiagnosePage> createState() => _DiagnosePageState();
}

class _DiagnosePageState extends State<DiagnosePage> {

  void _diagnosisResults(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DiagnoseResultsPage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
          Column(
          children: <Widget>[
            const Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(5, 70, 5, 20),
                child: Text(
                  'Diagnosis Quiz',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            const Center(
              child: CarSearch(),
            ),
            const DiagnosisQuestion(),
            const DiagnosisQuestion(),
            Align(
              alignment:
                Alignment.center,
              child:
                ElevatedButton(
                    onPressed: _diagnosisResults,
                    style:
                      ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFB2C9D6),
                        shadowColor: const Color(0xFF1E1F1E),
                      ),
                    child:
                      const Text(
                        'Submit Quiz',
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
        bottomNavigationBar: const BottomAppBar(
            color: Color(0xFFb2c9d6),
            child:
              HomeBottomNav()
        ),
    );
  }
}

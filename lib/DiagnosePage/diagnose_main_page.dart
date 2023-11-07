import 'package:capstone/DiagnosePage/car_search.dart';
import 'package:capstone/DiagnosePage/diagnose_feel_main_page.dart';
import 'package:capstone/DiagnosePage/diagnose_hear_main_page.dart';
import 'package:capstone/DiagnosePage/diagnose_see_main_page.dart';
import 'package:capstone/DiagnosePage/diagnose_smell_main_page.dart';
import 'package:capstone/DiagnosePage/diagnose_wont_start_main_page.dart';
import 'package:capstone/DiagnosePage/diagnosis_question.dart';
import 'package:capstone/DiagnoseResultsPage/diagnose_results_main_page.dart';
import 'package:capstone/back_button.dart';
import 'package:capstone/information_text_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../HomePage/home_bottom_navbar.dart';

class DiagnosePage extends StatefulWidget {
  const DiagnosePage({super.key});

  @override
  State<DiagnosePage> createState() => _DiagnosePageState();
}

class _DiagnosePageState extends State<DiagnosePage> {
  final OBDController = TextEditingController();


  void _diagnose_hear(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DiagnoseHearPage())
    );
  }

  void _diagnose_see(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DiagnoseSeePage())
    );
  }

  void _diagnose_smell(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DiagnoseSmellPage())
    );
  }

  void _diagnose_feel(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DiagnoseFeelPage())
    );
  }

  void _diagnose_starting(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DiagnoseWontStartPage())
    );
  }

  void _info_block(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const InformationPage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
          SingleChildScrollView(
            child:
              Column(
              children: <Widget>[
                const Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8, 50, 5, 20),
                    child: Text(
                      'Diagnosis Quiz',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                const Center(
                  child:
                  Text(
                    "Describe What's Wrong: ",
                    style:
                    TextStyle(
                        fontSize: 30
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: ElevatedButton(
                          style:
                          ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF6F9FA),
                            shadowColor: const Color(0xFFF6F9FA),
                          ),
                          onPressed: _diagnose_hear,
                          child:
                          const Row(
                            children: [
                              Icon(
                                Icons.hearing_sharp,
                                size: 40,
                                color: Color(0xFF7C93A1),
                              ),
                              Text(
                                '  I can \n hear it',
                                style:
                                TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF7C93A1)
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: ElevatedButton(
                          style:
                          ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF6F9FA),
                            shadowColor: const Color(0xFFF6F9FA),
                          ),
                          onPressed: _diagnose_see,
                          child:
                          const Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye_outlined,
                                size: 40,
                                color: Color(0xFF7C93A1),
                              ),
                              Text(
                                '  I can \n see it',
                                style:
                                TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF7C93A1)
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: ElevatedButton(
                          style:
                          ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF6F9FA),
                            shadowColor: const Color(0xFFF6F9FA),
                          ),
                          onPressed: _diagnose_smell,
                          child:
                          const Row(
                            children: [
                              Icon(
                                Icons.air,
                                size: 40,
                                color: Color(0xFF7C93A1),
                              ),
                              Text(
                                '  I can \n smell it',
                                style:
                                TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF7C93A1)
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: ElevatedButton(
                          style:
                          ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF6F9FA),
                            shadowColor: const Color(0xFFF6F9FA),
                          ),
                          onPressed: _diagnose_feel,
                          child:
                          const Row(
                            children: [
                              Icon(
                                Icons.waving_hand_rounded,
                                size: 40,
                                color: Color(0xFF7C93A1),
                              ),
                              Text(
                                '  I can \n feel it',
                                style:
                                TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF7C93A1)
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 120),
                  child: ElevatedButton(
                      style:
                      ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF6F9FA),
                        shadowColor: const Color(0xFFF6F9FA),
                      ),
                      onPressed: _diagnose_starting,
                      child:
                      const Row(
                        children: [
                          Icon(
                            Icons.warning,
                            size: 40,
                            color: Color(0xFF7C93A1),
                          ),
                          Text(
                            'It wont \n start',
                            style:
                            TextStyle(
                                fontSize: 20,
                                color: Color(0xFF7C93A1)
                            ),
                          )
                        ],
                      )
                  ),
                ),
                Center(
                    child:
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 12),
                        child:
                        Row(
                          children: [
                            const Text(
                              'OR enter your',
                              style:
                              TextStyle(
                                  fontSize: 30
                              ),

                            ),
                            TextButton(
                                onPressed: _info_block,
                                child:
                                const Text(
                                  'OBD Code',
                                  style:
                                  TextStyle(
                                      fontSize: 30,
                                      fontStyle: FontStyle.italic,
                                      color: Color(0xFF7c93a1),
                                      decoration:
                                      TextDecoration.underline,
                                      decorationThickness: 1.5,
                                      decorationColor: Color(0xFF7c93a1)
                                  ),
                                )
                            ),
                            const Text(
                              ':',
                              style:
                              TextStyle(
                                  fontSize: 30
                              ),

                            ),
                          ],
                        )
                    )
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: TextField(
                            controller: OBDController,
                            decoration:
                            const InputDecoration(
                                hintText: 'Enter Your OBD Code',
                                focusedBorder:
                                  OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3,
                                          color: Color(0xFF7C93A1)
                                      )
                                  ),
                                border:
                                  OutlineInputBorder(
                                    borderSide: BorderSide( 
                                      color: Color(0xFF7C93A1)
                                    )
                                  ),
                            ),
                              cursorColor: const Color(0xFF7C93A1),
                          ),
                        ))),
                //if the text box is not null then make a submit button appear
              ],
            ),
          ),
        bottomNavigationBar: const BottomAppBar(
            color: Color(0xFFb2c9d6),
            child:
              HomeBottomNav()
        ),
    );
  }
}

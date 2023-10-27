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

  void _diagnoseResults(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PartsPage())
    );
  }


  void _VideoPage(){
    GlobalVariables.video_search = 'how to change my car tire';
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const VideoPage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
            ),
        ),
    );
  }
}

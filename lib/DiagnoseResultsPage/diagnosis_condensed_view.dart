import 'dart:convert';

import 'package:capstone/DiagnoseResultsPage/_diagnose_results_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../PartsPage/parts_main_page.dart';
import '../VideoPage/video_main_page.dart';
import '../global_variables.dart';

class DiagnosisResultMini extends StatefulWidget {
  final String part_name;
  final String service;
  final String diagnose_title;
  const DiagnosisResultMini({
    super.key,
    required this.part_name,
    required this.service,
    required this.diagnose_title
  });

  @override
  State<DiagnosisResultMini> createState() => _DiagnosisResultMiniState(part_name, service, diagnose_title);
}

class _DiagnosisResultMiniState extends State<DiagnosisResultMini> {
  late String partName;
  late String remedy;
  late String diagnosisTitle;

  _DiagnosisResultMiniState(String part_name, String service, String diagnose_title){
    partName = part_name;
    remedy = service;
    diagnosisTitle = diagnose_title;
  }

  //TODO:save the diagnosis call
  //TODO:grab the part price and name from python call
  //TODO:save that call to db
  //TODO: need to account for multiple parts

  Future<Response> _createDiagnosis() async{

    Map newDiagnosis = {
      'description': diagnosisTitle.toString(),
      'fix': remedy.toString()
    };

    var newDiagnosisJSON = jsonEncode(newDiagnosis);

    String ip = GlobalVariables.ip;
    int car_id = GlobalVariables.car_id;
    String url = "http://$ip:2026/diagnose/$car_id";
    final requestLink = Uri.parse(url);

    //makes the request and returns the body
    Response response = await post(
      requestLink,
      headers: {
        "Content-Type": "application/json"
      },
      body: newDiagnosisJSON,
    );

    return response;
  }


  void _diagnoseResults(){
    GlobalVariables.part_name = partName;
    //TODO: make parts call and save parts to parts db (maybe just make db call on parts page???)

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PartsPage())
    );
  }

  void _VideoPage(){
    _createDiagnosis().then((value){
      var jsonBody = jsonDecode(value.body) as Map<String, dynamic>;
      int id = jsonBody['id'] as int;
      GlobalVariables.diagnose_id = id;
    });

    //TODO: make a video call first and then add that video call to the db

    GlobalVariables.video_search = '2008 PT cruiser $remedy';
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const VideoPage())
    );
  }

  void _diagnoseInfo(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DiagnosisInformation(
          diagnoseTitle: 'Oil Change',
          info: 'An oil change is when you change your oil',
        ))
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
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child:
                      TextButton(
                          onPressed: _diagnoseInfo,
                          child:
                            Text(
                              diagnosisTitle,
                              style:
                              const TextStyle(
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

import 'dart:async';
import 'dart:convert';

import 'package:capstone/PartsPage/part_specs.dart';
import 'package:capstone/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PartsPage extends StatefulWidget {
  const PartsPage({super.key});

  @override
  State<PartsPage> createState() => _PartsPageState();
}

class _PartsPageState extends State<PartsPage> {

  Future<dynamic> _getUsersName () async {
    //parses link to uri link
    String url = "http://10.0.170.82:2025/user/1";
    final requestLink = Uri.parse(url);

    //makes the request and returns the body
    Response response = await get(requestLink);
    var jsonBody = jsonDecode(response.body) as Map<String, dynamic>;
    var name = jsonBody['name'];
    return name;
  }

  @override
  Widget build(BuildContext context) {

      return const Scaffold(
          body:
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child:
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child:
                              BackButtonCar(),
                            ),
                            Center(
                              child:
                              Text(
                                'Parts For Fix',
                                style:
                                TextStyle(
                                    fontSize: 50
                                ),
                              ),
                            ),
                          ],
                        )
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 50),
                    child:
                      Center(
                      child:
                      Column(
                        children: [
                          PartSpecs(),
                          PartSpecs(),
                          PartSpecs(),
                          // FutureBuilder(
                          //     future: _getUsersName(),
                          //     builder: (context, snapshot){
                          //
                          //       if(snapshot.hasError){
                          //         return Text(
                          //             'Error: ${snapshot.error}'
                          //         );
                          //       }else{
                          //         return Text(
                          //           snapshot.data.toString() ?? '',
                          //           style:
                          //             const TextStyle(
                          //               fontSize: 30
                          //             ),
                          //         );
                          //       }
                          //     }
                          // )
                        ],
                      ),
                    ),
                  )
                ],
              )
      );
  }
}

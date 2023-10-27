import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

import '../global_variables.dart';

class PartSpecs extends StatefulWidget {


  const PartSpecs(
      {super.key}
      );
//port address: http://127.0.0.1:2031 (PyPartAPI)
  @override
  State<PartSpecs> createState() => _PartSpecsState();
}

class _PartSpecsState extends State<PartSpecs> {
  late var _partName = "";
  late var _partPrice = "";

  Future<dynamic> _getPart() async {
    //parses link to uri link
    String search = 'timing';
    String ip = GlobalVariables.ip;
    String url = "http://$ip:2031/part/$search";
    final requestLink = Uri.parse(url);

    //makes the request and returns the body
    Response response = await get(requestLink);
    var jsonBody = jsonDecode(response.body) as Map<String, dynamic>;
    _partName = jsonBody['partName'].toString();
    _partPrice = jsonBody['partPrice'].toString();
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child:
        FutureBuilder(
            future: _getPart(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text(
                    'Error: ${snapshot.error}'
                );
              } else {
                if(_partName != null){
                  return
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child:
                        Row(
                          children: [
                            Center(
                              child:
                                Text(
                                  _partName.toString() ,
                                  style:
                                  const TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                            ),
                            const Center(
                              child:
                                Text(
                                  '............................',
                                  style:
                                  TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                            ),
                            Center(
                              child:
                              Align(
                                alignment: Alignment.centerRight,
                                child:
                                Text(
                                  _partPrice.toString() ?? 'price not found',
                                  style:
                                  const TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                    );
                }else {
                  return
                    const Text(
                        "Oopsies"
                    );
                }
              }
            }
        )
    );


  }
}
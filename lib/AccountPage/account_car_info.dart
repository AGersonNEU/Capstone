import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

import '../global_variables.dart';

class AccountCarInfo extends StatefulWidget {
  final int carId;
  final String carName;
  
  const AccountCarInfo({
    super.key,
    required this.carId,
    required this.carName
  });

  @override
  State<AccountCarInfo> createState() => _AccountCarInfoState(carId, carName);
}

class _AccountCarInfoState extends State<AccountCarInfo> {
  late int car_id = 0;
  late String car_name = "";
  late String car_diagnosis = "";

  _AccountCarInfoState(int carId, String carName){
   car_id = carId;
   car_name = carName;
  }

  Future<dynamic> _getCarDiagnosis() async{
    car_diagnosis = '';
    int carId = car_id;
    String ip = GlobalVariables.ip;
    String url = "http://$ip:2026/diagnose/all/$carId";
    final requestLink = Uri.parse(url);

    //makes the request and returns the body
    Response response = await get(requestLink);
    List carDiagnosis = jsonDecode(response.body);

    int diagIndex = 0;
    for(dynamic diagnosis in carDiagnosis){
      car_diagnosis ='$car_diagnosis \n ${diagnosis['fix']}';
      diagIndex = diagIndex + 1;
    }

    if(diagIndex == 0){
      car_diagnosis = '   No Diagnosis Yet';
    }

    return response;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Center(
          child:
              Column(
                children: [
                  FutureBuilder(
                      future: _getCarDiagnosis(),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return const Text('oopsies');
                        } else
                          if (snapshot.hasData) {
                          return
                            Column(
                              children: [
                                Center(
                                  child:
                                  Text(
                                    car_name,
                                    style:
                                    const TextStyle(
                                        fontSize: 15
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Center(
                                      child:
                                      Text(
                                        'Diagnosis: ',
                                        style:
                                        TextStyle(
                                            fontSize: 15
                                        ),
                                      ),
                                    ),
                                    Text(
                                      car_diagnosis ?? '',
                                      style:
                                      const TextStyle(
                                          fontSize: 15
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            );
                        } else {
                          return const Text('waiting');
                        }
                      }
                  )
                ],
              ),
        )
      ]
    );
  }
}

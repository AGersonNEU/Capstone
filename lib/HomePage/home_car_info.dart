import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../CarCreatePage/car_create_main_page.dart';
import '../DiagnosePage/diagnose_main_page.dart';
import '../global_variables.dart';

class HomeCarInfo extends StatefulWidget {
  final int carId;

  const HomeCarInfo({
    super.key,
    required this.carId,
  });

  @override
  State<HomeCarInfo> createState() => _HomeCarInfoState(carId);
}

class _HomeCarInfoState extends State<HomeCarInfo> {

  late var car_id = 0;
  late var car_name = '';
  late var car_image = '';
  late var car_description = '';
  late var car_diagnosis = '';

  _HomeCarInfoState(int carId){
    car_id = carId;
  }

  Future<dynamic> _getOneCar () async {
    //parses link to uri link
    int id = car_id;
    String ip = GlobalVariables.ip;
    String url = "http://$ip:2025/car/$id";
    final requestLink = Uri.parse(url);

    //makes the request and returns the body
    Response response = await get(requestLink);
    var accountCar = jsonDecode(response.body);

    car_name = accountCar['name'].toString();
    car_description = "${accountCar['make']} ${accountCar['model']} ${accountCar['year']}";
    car_image = accountCar['image'].toString();

    return response;
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

    //List<dynamic> accountCars = jsonDecode(response.body);
    int diagIndex = 0;
    for(dynamic diagnosis in carDiagnosis){
      car_diagnosis ='$car_diagnosis \n ${diagnosis['fix']}';
      diagIndex = diagIndex + 1;
    }

    return response;
  }

  void _editCar(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CarCreatePage())
    );
  }

  void _diagnoseCar(){
    GlobalVariables.diagnose_car_id = car_id;
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DiagnosePage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
      Column(
          children:
          [
            FutureBuilder(
                future: _getOneCar(),
                builder: (context, snapshot){
                  if(snapshot.hasError){
                    return Text(
                        'Error: ${snapshot.error}'
                    );
                  }else{
                    return
                      Column(
                        children: [
                          Center(
                              child:
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(100, 70, 5, 20),
                                  child:
                                  Row(
                                    children: [
                                      Text(
                                        car_name.toString() ?? '',
                                        style:
                                        const TextStyle(
                                          fontSize: 50,
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: _editCar,
                                          icon:
                                          const Icon(
                                            Icons.edit,
                                            size: 40,
                                            color:
                                            Color(0xFFD9E4EB),
                                          )
                                      ),
                                    ],
                                  )
                              )
                          ),
                          Center(
                            child:
                            Padding(
                                padding: const EdgeInsets.fromLTRB(50,5,50, 30),
                                child:
                                Image.network(car_image)
                            ),
                          ),
                          Center(
                            child:
                            Padding(
                                padding: const EdgeInsets.all(20),
                                child:
                                Text(
                                  car_description ?? '',
                                  style: const TextStyle(
                                      fontSize: 20
                                  ),
                                )
                            ),
                          ),
                        ],
                      );
                  }
                }
            ),
            const Center(
              child:
              Padding(
                padding: EdgeInsets.fromLTRB(50,5,50, 10),
                child:
                Text(
                  "Problems With Car",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
              ),
            ),
            FutureBuilder(
                future: _getCarDiagnosis(),
                builder: (context, snapshot){
                  if(snapshot.hasError){
                    return const Text('oopsies');
                  }else{
                    return
                      Center(
                          child:
                          Text(
                            car_diagnosis ?? '',
                            style:
                            const TextStyle(
                              fontSize: 25,
                            ),
                          )
                      );
                  }
                }
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child:
              TextButton(
                  onPressed: _diagnoseCar,
                  child:
                  const Text(
                    'Diagnose Car',
                    style:
                    TextStyle(
                        fontSize: 20,
                        color: Color(0xFF7c93a1)
                    ),
                  )
              ),
            ),
          ]
      ),
    );
  }
}

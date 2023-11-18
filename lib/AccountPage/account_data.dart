import 'dart:convert';

import 'package:capstone/AccountPage/account_car_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import '../global_variables.dart';

class AccountData extends StatefulWidget {
  const AccountData({super.key});

  @override
  State<AccountData> createState() => _AccountDataState();
}

class _AccountDataState extends State<AccountData> {
  late var _name = "";
  late var _username = "";

  late var carId = 0;
  late var carName = "Name";

  late var carIdTwo = 0;
  late var carNameTwo = "";

  late var carIdThree = 0;
  late var carNameThree = "";

  late var carIdFour = 0;
  late var carNameFour = "";


  Future<dynamic> _getUsersCars () async {
    //parses link to uri link
    int id = GlobalVariables.account_id;
    String ip = GlobalVariables.ip;
    String url = "http://$ip:2025/car/all/$id";
    final requestLink = Uri.parse(url);

    //makes the request and returns the body
    Response response = await get(requestLink);
    List accountCars = jsonDecode(response.body);

    var carOne = accountCars[0];
    var carTwo = accountCars[1];
    var carThree = accountCars[2];
    var carFour = accountCars[3];

    carName = carOne['name'].toString();
    carId = carOne['id'] as int;

    carNameTwo = carTwo['name'].toString();
    carIdTwo = carTwo['id'] as int;

    carNameThree = carThree['name'].toString();
    carIdThree = carThree['id'] as int;

    carNameFour = carFour['name'].toString();
    carIdFour = carFour['id'] as int;

    return response;
  }

  Future<dynamic> _getUsersName () async {
    //parses link to uri link
    int id = GlobalVariables.account_id;
    String ip = GlobalVariables.ip;
    String url = "http://$ip:2024/user/$id";
    final requestLink = Uri.parse(url);

    //makes the request and returns the body
    Response response = await get(requestLink);
    var jsonBody = jsonDecode(response.body) as Map<String, dynamic>;
    _name = jsonBody['name'].toString();
    _username = jsonBody['username'].toString();

    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
        Column(
          children: [
            Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child:
                      FutureBuilder(
                          future: _getUsersName(),
                          builder: (context, snapshot){
                            if(snapshot.hasError){
                              return const Text('oopsies');
                            }else{
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child:
                                    Container(
                                        decoration:
                                        BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: const Color(0xFFEFF4F7),
                                        ),
                                        child:
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                          child:
                                          Column(
                                              children:
                                              [
                                                Text(
                                                  _name.toString() ?? 'name not found',
                                                  style:
                                                  const TextStyle(
                                                      fontSize: 50
                                                  ),
                                                ),
                                                Text(
                                                  _username.toString() ?? 'username not found',
                                                  style:
                                                  const TextStyle(
                                                      fontSize: 20,
                                                      fontStyle: FontStyle.italic
                                                  ),
                                                ),
                                              ]
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              );
                            }
                          }
                      )
              ),
            FutureBuilder(
                future: _getUsersCars(),
                builder: (context, snapshot){
                  if(snapshot.hasError){
                    return const Text('oopsies');
                  }else
                  if(snapshot.hasData){
                    return Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                child: Container(
                                  decoration:
                                  BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFEFF4F7),
                                  ),
                                  child:
                                Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                    child:
                                      AccountCarInfo(
                                          carId: carId,
                                          carName: carName
                                      )
                                )
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                child: Container(
                                  decoration:
                                  BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFEFF4F7),
                                  ),
                                  child:
                                Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                    child:
                                      AccountCarInfo(
                                          carId: carIdTwo,
                                          carName: carNameTwo
                                      )
                                )
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                child: Container(
                                  decoration:
                                  BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFEFF4F7),
                                  ),
                                  child:
                                Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                    child:
                                      AccountCarInfo(
                                          carId: carIdThree,
                                          carName: carNameThree
                                      )
                                )
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                child: Container(
                                  decoration:
                                  BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFEFF4F7),
                                  ),
                                  child:
                                Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                    child:
                                      AccountCarInfo(
                                          carId: carIdFour,
                                          carName: carNameFour
                                      )
                                )
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }else{
                    return const Text('loading');
                  }
                }
            )

           ]
        )
    );
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:capstone/back_button.dart';
import 'package:capstone/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';

import '../global_variables.dart';

class CarCreatePage extends StatefulWidget {
  const CarCreatePage({super.key});

  @override
  State<CarCreatePage> createState() => _CarCreatePageState();
}

class _CarCreatePageState extends State<CarCreatePage> {
  final nameController = TextEditingController();
  final makeController = TextEditingController();
  final modelController = TextEditingController();
  final yearController = TextEditingController();

  Future<Response> _createCar() async{

    Map newCar = {
      'name': nameController.text.toString(),
      'make': makeController.text.toString(),
      'model': modelController.text.toString(),
      'year': yearController.text.toString()
    };

    var newCarJSON = jsonEncode(newCar);

    String ip = GlobalVariables.ip;
    String url = "http://$ip:2025/car";
    final requestLink = Uri.parse(url);

    //makes the request and returns the body
    Response response = await post(
      requestLink,
      headers: {
        "Content-Type": "application/json"
      },
      body: newCarJSON,
    );

    return response;
  }

  void _createCarButton(){
    _createCar().then((value){

      var jsonBody = jsonDecode(value.body) as Map<String, dynamic>;
      int id = jsonBody['id'];
      GlobalVariables.car_id = id;

    });

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SingleChildScrollView(
          child:
            Center(
            child: Column(
              children: [
                const Row(
                  children: [
                    BackButtonCar(),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 50, 0, 20),
                      child: Text(
                        'Create A Car Profile',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Name: ',
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: TextField(
                            controller: nameController,
                            decoration: const InputDecoration(
                                hintText: 'Give Your Car A Name',
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
                              )
                            ),
                            cursorColor: const Color(0xFF7C93A1),
                          ),
                        ))),

                const Padding(
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Make: ',
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: TextField(
                            controller: makeController,
                            decoration: const InputDecoration(
                                hintText: 'Enter A Make',
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

                const Padding(
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Model: ',
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: TextField(
                            controller: modelController,
                            decoration: const InputDecoration(
                                hintText: 'Enter A Model',
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

                const Padding(
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Year: ',
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 5),
                    child:
                    TextFormField(
                      controller: yearController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(4),
                      ],
                      decoration:const InputDecoration(
                        hintText: 'Enter Your Cars Year',
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
                    )
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                  child:
                  ElevatedButton(
                    onPressed: _createCarButton,
                    style:
                    ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFb2c9d6)
                    ),
                    child:
                    const Text(
                      'Create Car Profile',
                      style:
                      TextStyle(
                          fontSize: 20,
                          color: Color(0xFFf6f9f1)
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

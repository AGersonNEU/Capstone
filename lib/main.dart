import 'dart:convert';

import 'package:capstone/CarCreatePage/car_create_main_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'HomePage/home_bottom_navbar.dart';
import 'global_variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capstone',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Center( child: MyHomePage(title: 'Home')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _CarHomePage();
}

class _CarHomePage extends State<MyHomePage>{
  late var _carName = "Car Name";
  late var _carDescription = "Make Model Year";

  Future<dynamic> _getCar () async {
    //parses link to uri link
    int id = GlobalVariables.car_id;
    String ip = GlobalVariables.ip;
    String url = "http://$ip:2025/car/$id";
    final requestLink = Uri.parse(url);

    //makes the request and returns the body
    Response response = await get(requestLink);
    var jsonBody = jsonDecode(response.body) as Map<String, dynamic>;

    _carName = jsonBody['name'].toString();
    _carDescription = "${jsonBody['make']} ${jsonBody['model']} ${jsonBody['year']}";

    return response;
  }

  void _createNewCar(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CarCreatePage())
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:
        [
          FutureBuilder(
              future: _getCar(),
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
                              padding: const EdgeInsets.fromLTRB(5, 70, 5, 20),
                              child:
                              Text(
                                _carName.toString() ?? '',
                                style:
                                const TextStyle(
                                  fontSize: 50,
                                ),
                              )
                          ),
                        ),
                        Center(
                          child:
                          Padding(
                              padding: const EdgeInsets.fromLTRB(50,5,50, 30),
                              child:
                              Image.asset('assets/images/car_test_image.jpg')
                          ),
                        ),
                        Center(
                          child:
                          Padding(
                              padding: const EdgeInsets.all(20),
                              child:
                              Text(
                                _carDescription.toString() ?? '',
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
              padding: EdgeInsets.fromLTRB(50,5,50, 30),
              child:
                Text(
                  "Problems With Car",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
            ),
          ),

          Center(
            child:
                FloatingActionButton.extended(
                    onPressed: _createNewCar,
                    tooltip: 'Create Car',
                  label:
                    const Text(
                      'Create Car'
                    ),
                )
          )
        ]
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color(0xFFb2c9d6),
        child:
          HomeBottomNav()
      ),
    );



  }
}

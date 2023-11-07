import 'dart:convert';

import 'package:capstone/CarCreatePage/car_create_main_page.dart';
import 'package:capstone/DiagnosePage/diagnose_main_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'HomePage/home_bottom_navbar.dart';
import 'global_variables.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  //final String title;

  @override
  State<MyHomePage> createState() => _CarHomePage();
}

class _CarHomePage extends State<MyHomePage>{
  final PageController pageController = PageController(initialPage: 0);

  late var _carNameOne = "Car Name";
  late var _carDescriptionOne = "Make Model Year";
  late var _carImageOne = "";

  late var _carNameTwo = "Car Name";
  late var _carDescriptionTwo = "Make Model Year";
  late var _carImageTwo = "";

  late var _carNameThree = "Car Name";
  late var _carDescriptionThree = "Make Model Year";
  late var _carImageThree = "";

  late var _carNameFour = "Car Name";
  late var _carDescriptionFour = "Make Model Year";
  late var _carImageFour = "";

  late var _carId = 0;

  Future<dynamic> _getCar () async {
    //parses link to uri link
    int id = GlobalVariables.account_id;
    String ip = GlobalVariables.ip;
    String url = "http://$ip:2025/car/all/$id";
    final requestLink = Uri.parse(url);

    //makes the request and returns the body
    Response response = await get(requestLink);
    List accountCars = jsonDecode(response.body);

    //List<dynamic> accountCars = jsonDecode(response.body);
    var car = accountCars[0];
    var car2 = accountCars[1];
    var car3 = accountCars[2];
    var car4 = accountCars[3];

    _carId = car['id'];


    _carNameOne = car['name'].toString();
    _carDescriptionOne = "${car['make']} ${car['model']} ${car['year']}";
    _carImageOne = car['image'].toString();

    _carNameTwo = car2['name'].toString();
    _carDescriptionTwo = "${car2['make']} ${car2['model']} ${car2['year']}";
    _carImageTwo = car2['image'].toString();

    _carNameThree = car3['name'].toString();
    _carDescriptionThree = "${car3['make']} ${car3['model']} ${car3['year']}";
    _carImageThree = car3['image'].toString();

    if(car4 != null ){
      _carNameFour = car4['name'].toString();
      _carDescriptionFour = "${car4['make']} ${car4['model']} ${car4['year']}";
      _carImageFour = car4['image'].toString();
    }


    return response;
  }

  void _createNewCar(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CarCreatePage())
    );
  }

  _diagnoseCar(){
    GlobalVariables.diagnose_car_id = _carId;

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DiagnosePage())
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          PageView(
            controller: pageController,
            children: [
              Column(
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
                                        padding: const EdgeInsets.fromLTRB(100, 70, 5, 20),
                                        child:
                                              Row(
                                                children: [
                                                    Text(
                                                      _carNameOne.toString() ?? '',
                                                      style:
                                                      const TextStyle(
                                                        fontSize: 50,
                                                      ),
                                                    ),
                                                  IconButton(
                                                      onPressed: _createNewCar,
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
                                        Image.network(_carImageOne)
                                    ),
                                  ),
                                  Center(
                                    child:
                                    Padding(
                                        padding: const EdgeInsets.all(20),
                                        child:
                                        Text(
                                          _carDescriptionOne.toString() ?? '',
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
              Column(
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
                                          padding: const EdgeInsets.fromLTRB(100, 70, 5, 20),
                                          child:
                                          Row(
                                            children: [
                                              Text(
                                                _carNameTwo.toString() ?? '',
                                                style:
                                                const TextStyle(
                                                  fontSize: 50,
                                                ),
                                              ),
                                              IconButton(
                                                  onPressed: _createNewCar,
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
                                        Image.network(_carImageTwo)
                                    ),
                                  ),
                                  Center(
                                    child:
                                    Padding(
                                        padding: const EdgeInsets.all(20),
                                        child:
                                        Text(
                                          _carDescriptionTwo.toString() ?? '',
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
                  ]
              ),
              Column(
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
                                          padding: const EdgeInsets.fromLTRB(100, 70, 5, 20),
                                          child:
                                          Row(
                                            children: [
                                              Text(
                                                _carNameThree.toString() ?? '',
                                                style:
                                                const TextStyle(
                                                  fontSize: 50,
                                                ),
                                              ),
                                              IconButton(
                                                  onPressed: _createNewCar,
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
                                          Image.network(_carImageThree)
                                    ),
                                  ),
                                  Center(
                                    child:
                                    Padding(
                                        padding: const EdgeInsets.all(20),
                                        child:
                                        Text(
                                          _carDescriptionThree.toString() ?? '',
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
                  ]
              ),
              Column(
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
                                          padding: const EdgeInsets.fromLTRB(100, 70, 5, 20),
                                          child:
                                          Row(
                                            children: [
                                              Text(
                                                _carNameFour.toString() ?? '',
                                                style:
                                                const TextStyle(
                                                  fontSize: 50,
                                                ),
                                              ),
                                              IconButton(
                                                  onPressed: _createNewCar,
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
                                          Image.network(_carImageFour)
                                    ),
                                  ),
                                  Center(
                                    child:
                                    Padding(
                                        padding: const EdgeInsets.all(20),
                                        child:
                                        Text(
                                          _carDescriptionFour.toString() ?? '',
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
                  ]
              ),
            ],
          ),
      floatingActionButton:
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 150),
            child:
              FloatingActionButton.extended(
                onPressed: _createNewCar,
                tooltip: 'Create Car',
                label:
                  const Text(
                    'Create Car',
                    style:
                      TextStyle(
                        color: Color(0xFFF6F9FA)
                      ),
                ),
                backgroundColor: const Color(0xFF7C93A1),
              ),
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBar(
        color: Color(0xFFb2c9d6),
        child:
          HomeBottomNav()
      ),
    );



  }
}

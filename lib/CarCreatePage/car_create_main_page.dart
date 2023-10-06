import 'dart:io';

import 'package:capstone/CarCreatePage/car_year.dart';
import 'package:capstone/main.dart';
import 'package:flutter/material.dart';

class CarCreatePage extends StatefulWidget {
  const CarCreatePage({super.key});

  @override
  State<CarCreatePage> createState() => _CarCreatePageState();
}

class _CarCreatePageState extends State<CarCreatePage> {

  void _CreateCarButton(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyApp())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(40, 50, 40, 20),
              child: Text(
                'Create A Car Profile',
                style: TextStyle(fontSize: 30),
              ),
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
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Give Your Car A Name',
                            border: OutlineInputBorder()),
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
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter A Make',
                            border: OutlineInputBorder()),
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
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter A Model',
                            border: OutlineInputBorder()),
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
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 5),
                child:
                  CarYearPicker()
            ),

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                child:
                  ElevatedButton(
                      onPressed: _CreateCarButton,
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
    ));
  }
}

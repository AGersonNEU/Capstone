import 'dart:convert';

import 'package:capstone/CarCreatePage/car_create_main_page.dart';
import 'package:capstone/DiagnosePage/diagnose_main_page.dart';
import 'package:capstone/HomePage/home_car_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'HomePage/home_bottom_navbar.dart';
import 'global_variables.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _CarHomePage();
}

class _CarHomePage extends State<MyHomePage>{

  void _createNewCar(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CarCreatePage())
    );
  }

  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
      body:
          const HomeCarProfile(),
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

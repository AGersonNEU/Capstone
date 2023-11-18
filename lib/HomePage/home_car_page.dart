import 'dart:convert';

import 'package:capstone/HomePage/home_car_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../global_variables.dart';

class HomeCarProfile extends StatefulWidget {
  const HomeCarProfile({super.key});

  @override
  State<HomeCarProfile> createState() => _HomeCarProfileState();
}

class _HomeCarProfileState extends State<HomeCarProfile> {
  final PageController pageController = PageController();
  late var carOne = 0;
  late var carTwo = 0;
  late var carThree = 0;
  late var carFour = 0;

  Future<Response> _getCars() async {
    int id = GlobalVariables.account_id;
    String ip = GlobalVariables.ip;
    String url = "http://$ip:2025/car/all/$id";
    final requestLink = Uri.parse(url);

    //makes the request and returns the body
    Response response = await get(requestLink);
    List accountCars = jsonDecode(response.body);

     var car = accountCars[0];
     var car2 = accountCars[1];
     var car3 = accountCars[2];
     var car4 = accountCars[3];

     carOne = car['id'];
     carTwo = car2['id'];
     carThree = car3['id'];
     carFour = car4['id'];

    return response;
  }



  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder(
          future: _getCars(),
          builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return const CircularProgressIndicator();
            }else
          if(snapshot.hasError){
            return const Text('oopsies');
          }else{
            return PageView(
                    controller: pageController,
                    children: [
                      HomeCarInfo(carId: carOne),
                      HomeCarInfo(carId: carTwo),
                      HomeCarInfo(carId: carThree),
                      HomeCarInfo(carId: carFour),
                    ],
                  );
          }
        }
      );
  }
}

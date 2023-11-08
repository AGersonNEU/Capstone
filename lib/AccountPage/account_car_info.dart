import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

import '../global_variables.dart';

class AccountCarInfo extends StatefulWidget {
  final String car;

  const AccountCarInfo({
    super.key,
    required this.car
  });

  @override
  State<AccountCarInfo> createState() => _AccountCarInfoState(car);
}

class _AccountCarInfoState extends State<AccountCarInfo> {
  late String car_info = "";

  _AccountCarInfoState(String car){
   car_info = car;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Center(
          child:
          Text(
            car_info,
            style:
            const TextStyle(
                fontSize: 15
            ),
          ),
        ),
        const Center(
          child:
            Row(
            children: [
              Center(
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
                'Transmission Leak',
                style:
                TextStyle(
                    fontSize: 15
                ),
              ),
            ],
          ),
        )
      ]
    );
  }
}

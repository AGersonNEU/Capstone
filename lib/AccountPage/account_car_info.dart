import 'package:flutter/cupertino.dart';

class AccountCarInfo extends StatefulWidget {
  const AccountCarInfo({super.key});

  @override
  State<AccountCarInfo> createState() => _AccountCarInfoState();
}

class _AccountCarInfoState extends State<AccountCarInfo> {
  @override
  Widget build(BuildContext context) {
    return const
    Column(
      children:[
        Center(
          child:
          Text(
            'Car Name',
            style:
            TextStyle(
                fontSize: 15
            ),
          ),
        ),
        Center(
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

import 'dart:convert';

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
  late var _car = "";

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
            Text(
              GlobalVariables.account_id.toString()
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child:
                FutureBuilder(
                    future: _getUsersName(),
                    builder: (context, snapshot){
                      if(snapshot.hasError){
                        return Text(
                            'Error: ${snapshot.error}'
                        );
                      }else{
                        if(_car == ""){
                          return
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
                                  )
                                ]
                            );
                        }else{
                          return
                            const Text(
                              "Oopsies"
                            );
                        }
                      }
                    }
                )
            )
          ],
        ),
    );
  }
}

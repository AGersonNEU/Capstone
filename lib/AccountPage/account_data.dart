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

  Future<dynamic> _getUsersName () async {
    //parses link to uri link
    int id = GlobalVariables.account_id;
    String url = "http://10.0.0.227:2024/user/$id";
    final requestLink = Uri.parse(url);

    //makes the request and returns the body
    Response response = await get(requestLink);
    var jsonBody = jsonDecode(response.body) as Map<String, dynamic>;
    var name = jsonBody['name'];
    return name;
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
                        return Text(
                          snapshot.data.toString() ?? 'name not found',
                          style:
                          const TextStyle(
                              fontSize: 30
                          ),
                        );
                      }
                    }
                )
            )
          ],
        ),
    );
  }
}

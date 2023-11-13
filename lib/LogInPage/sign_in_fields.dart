import 'dart:convert';

import 'package:capstone/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../global_variables.dart';

class SignInField extends StatefulWidget {
  const SignInField({super.key});

  @override
  State<SignInField> createState() => _SignInFieldState();
}

class _SignInFieldState extends State<SignInField> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  void _signIn (){
    _findAccount().then((value){

      var jsonBody = jsonDecode(value.body) as Map<String, dynamic>;
      int id = jsonBody['id'];
      GlobalVariables.account_id = id;

    });

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage())
    );
  }

  Future<Response> _findAccount() async {

    Map newAccount = {
      'username': usernameController.text.toString(),
      'password': passwordController.text.toString()
    };

    var newAccountJSON = jsonEncode(newAccount);
    String ip = GlobalVariables.ip;
    String url = "http://$ip:2024/user/login";
    final requestLink =Uri.parse(url);

    //makes the request and returns the body
    Response response = await post(
      requestLink,
      headers: {
        "Content-Type": "application/json"
      },
      body: newAccountJSON
    );
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 5),
              child:
                Align(
                  alignment: Alignment.centerLeft,
                  child:
                    Text(
                    'Username: ',
                    style:
                    TextStyle(
                        fontSize: 20
                    ),
                  ),
              )
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:
                Align(
                  alignment: Alignment.bottomLeft,
                  child:
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child:
                          TextField(
                            controller: usernameController,
                            decoration:
                              const InputDecoration(
                                hintText: 'Enter a Username',
                                border: OutlineInputBorder()
                            ),
                          ),
                      )
                )
          ),
          const Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 40, 5),
              child:
                Align(
                  alignment: Alignment.centerLeft,
                  child:
                    Text(
                    'Password: ',
                    style:
                    TextStyle(
                        fontSize: 20
                    ),
                  ),
              )
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:
                Align(
                  alignment: Alignment.bottomLeft,
                  child:
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child:
                        TextField(
                          controller: passwordController,
                          decoration:
                          const InputDecoration(
                              hintText: 'Enter a Password',
                              border: OutlineInputBorder()
                          ),
                          obscureText: true,
                        ),
                      )
                )
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child:
            OutlinedButton(
              onPressed: _signIn,
              style:
              ButtonStyle(
                  shape:
                  MaterialStateProperty.all(
                      const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(0)
                          ),
                          side:
                          BorderSide(
                              width: 2,
                              color:
                              Color(0xFF1e1f1e)
                          )
                      )
                  )
              ),
              child:
              const Text(
                'Sign In',
                style:
                TextStyle(
                    fontSize: 20
                ),
              ),
            ),
          ),
        ],
    );
  }
}

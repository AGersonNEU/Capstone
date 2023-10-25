import 'dart:convert';

import 'package:capstone/LogInPage/sign_in_fields.dart';
import 'package:capstone/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../global_variables.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  void _registerPage (){
    _createAccount().then((value){

      var jsonBody = jsonDecode(value.body) as Map<String, dynamic>;
      int id = jsonBody['id'];
      GlobalVariables.account_id = id;

    });

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage())
    );
  }

  Future<Response> _createAccount() async{

    Map newAccount = {
      'name': nameController.text.toString(),
      'username': usernameController.text.toString(),
      'email': emailController.text.toString(),
      'password': passwordController.text.toString()
    };

    var newAccountJSON = jsonEncode(newAccount);

    String ip = GlobalVariables.ip;
    String url = "http://$ip:2024/user";
    final requestLink = Uri.parse(url);

    //makes the request and returns the body
    Response response = await post(
        requestLink,
        headers: {
          "Content-Type": "application/json"
        },
        body: newAccountJSON,
    );

    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Column(
          children: [
            const Padding(
                padding: EdgeInsets.fromLTRB(40, 50, 40, 20),
                child:
                Center(
                  child:
                  Text(
                    'Register',
                    style:
                    TextStyle(
                        fontSize: 50
                    ),
                  ),
                ),
            ),

            const Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 40, 5),
                child:
                Align(
                  alignment: Alignment.centerLeft,
                  child:
                  Text(
                    'Name: ',
                    style:
                    TextStyle(
                        fontSize: 20
                    ),
                  ),
                )
            ),
            Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 20),
                child:
                Align(
                    alignment: Alignment.bottomLeft,
                    child:
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child:
                      TextField(
                        controller: nameController,
                        decoration:
                        const InputDecoration(
                            hintText: 'Enter your Name',
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
                    'Email: ',
                    style:
                    TextStyle(
                        fontSize: 20
                    ),
                  ),
                )
            ),
            Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20),
                child:
                Align(
                    alignment: Alignment.bottomLeft,
                    child:
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child:
                      TextField(
                        controller: emailController,
                        decoration:
                        const InputDecoration(
                            hintText: 'Enter an Email',
                            border: const OutlineInputBorder()
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
                    'Username: ',
                    style:
                    TextStyle(
                        fontSize: 20
                    ),
                  ),
                )
            ),
            Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 20),
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
                padding:  const EdgeInsets.symmetric(horizontal: 20),
                child:
                Align(
                    alignment: Alignment.bottomLeft,
                    child:
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child:
                      TextField(
                        controller: passwordController,
                        decoration:
                        const InputDecoration(
                            hintText: 'Enter a Password',
                            border: OutlineInputBorder()
                        ),
                      ),
                    )
                )
            ),

            Padding(
              padding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child:
              ElevatedButton(
                  onPressed: _registerPage,
                  child:
                  const Text(
                    'Register',
                    style:
                    TextStyle(
                        fontSize: 20
                    ),
                  )
              ),
            )
          ],
        ),
    );
  }
}

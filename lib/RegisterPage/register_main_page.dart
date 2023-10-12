import 'package:capstone/LogInPage/sign_in_fields.dart';
import 'package:capstone/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  void _registerPage (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyApp())
    );
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20),
                child:
                Align(
                    alignment: Alignment.bottomLeft,
                    child:
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child:
                      TextField(
                        decoration:
                        InputDecoration(
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
            const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20),
                child:
                Align(
                    alignment: Alignment.bottomLeft,
                    child:
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child:
                      TextField(
                        decoration:
                        InputDecoration(
                            hintText: 'Enter an Email',
                            border: OutlineInputBorder()
                        ),
                      ),
                    )
                )
            ),
            const SignInField(),
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

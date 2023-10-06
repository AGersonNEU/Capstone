import 'package:capstone/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInField extends StatefulWidget {
  const SignInField({super.key});

  @override
  State<SignInField> createState() => _SignInFieldState();
}

class _SignInFieldState extends State<SignInField> {

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          Padding(
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
                              hintText: 'Enter a Username',
                              border: OutlineInputBorder()
                          ),
                        ),
                      )
                )
          ),
          Padding(
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
                              hintText: 'Enter a Password',
                              border: OutlineInputBorder()
                          ),
                        ),
                      )
                )
          ),
        ],
    );
  }
}

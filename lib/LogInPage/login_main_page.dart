import 'package:capstone/LogInPage/register_button.dart';
import 'package:capstone/LogInPage/sign_in_fields.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

  void _signIn (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyApp())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:
        Center(
          child:
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child:
                  Text(
                    'Sign In',
                    style:
                    TextStyle(
                        fontSize: 50
                    ),
                  ),
                ),
                const SignInField(),
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
                const RegisterButton()
              ],
            ),
        )
    );
  }
}

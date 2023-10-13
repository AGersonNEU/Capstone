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

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body:
        Center(
          child:
            Column(
              children: [
                Padding(
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
                SignInField(),
                RegisterButton()
              ],
            ),
        )
    );
  }
}

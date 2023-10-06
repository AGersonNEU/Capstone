import 'package:capstone/LogInPage/login_main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogOutButton extends StatefulWidget {
  const LogOutButton({super.key});

  @override
  State<LogOutButton> createState() => _LogOutButtonState();
}

class _LogOutButtonState extends State<LogOutButton> {

  void _logInScreen (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LogInPage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
        TextButton(
            onPressed: _logInScreen,
            child:
              const Text(
                'Log Out',
                style:
                  TextStyle(
                    fontSize: 15,
                    color: Colors.red
                  ),
              )
        )
    );
  }
}

import 'package:capstone/RegisterPage/register_main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatefulWidget {
  const RegisterButton({super.key});

  @override
  State<RegisterButton> createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {

  void _registerPage (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const RegisterPage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return
      Column(
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child:
              Divider(
                color: Color(0xFF1e1f1e),
                thickness: 1.5,
              )
        ),
        const Center(
          child:
            Text(
              "Don't have an Account?",
              style:
                TextStyle(
                    fontSize: 20
                ),
            ),
        ),
        Padding(
            padding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child:
              ElevatedButton(
                  onPressed: _registerPage,
                  child:
                    const Text(
                      'Create Account',
                      style:
                        TextStyle(
                          fontSize: 20
                        ),
                    )
              ),
        )
      ],
    );
  }
}

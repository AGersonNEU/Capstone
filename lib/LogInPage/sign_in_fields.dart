import 'package:flutter/cupertino.dart';

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
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child:
                Text(
                  'Username: ',
                  style:
                    TextStyle(
                      fontSize: 20
                    ),
                ),
          ),
          // Padding(
          //     padding: EdgeInsets.fromLTRB(, top, right, bottom)
          // )
        ],
    );
  }
}

import 'package:capstone/LogInPage/register_button.dart';
import 'package:capstone/LogInPage/sign_in_fields.dart';
import 'package:flutter/material.dart';

import '../main.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capstone',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Center( child: LogInPage()),
    );
  }
}

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
         SingleChildScrollView(
           physics: NeverScrollableScrollPhysics(),
           child:
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
           ),
         )
    );
  }
}

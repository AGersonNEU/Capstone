import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
          Image.asset(
              'assets/images/CarWiseLogo.png'
          ),
      )
    );
  }
}
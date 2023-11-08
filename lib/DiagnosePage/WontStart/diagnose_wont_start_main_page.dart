import 'package:flutter/material.dart';

class DiagnoseWontStartPage extends StatefulWidget {
  const DiagnoseWontStartPage({super.key});

  @override
  State<DiagnoseWontStartPage> createState() => _DiagnoseWontStartPageState();
}

class _DiagnoseWontStartPageState extends State<DiagnoseWontStartPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
        Text(
          'wont start'
        ),
    );
  }
}

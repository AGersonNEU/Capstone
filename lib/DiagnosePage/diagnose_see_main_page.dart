import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiagnoseSeePage extends StatefulWidget {
  const DiagnoseSeePage({super.key});

  @override
  State<DiagnoseSeePage> createState() => _DiagnoseSeePageState();
}

class _DiagnoseSeePageState extends State<DiagnoseSeePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
      Text(
          'see page'
      ),
    );
  }
}

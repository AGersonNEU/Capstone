import 'package:capstone/PartsPage/part_specs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartsPage extends StatefulWidget {
  const PartsPage({super.key});

  @override
  State<PartsPage> createState() => _PartsPageState();
}

class _PartsPageState extends State<PartsPage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
          Center(
            child:
              Column(
                children: [
                  PartSpecs(),
                  PartSpecs(),
                  PartSpecs(),
                ],
              ),
          )
    );
  }
}

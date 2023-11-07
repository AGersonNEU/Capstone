import 'package:flutter/material.dart';

class BackButtonCar extends StatefulWidget {
  const BackButtonCar({super.key});

  @override
  State<BackButtonCar> createState() => _BackButtonCarState();
}

class _BackButtonCarState extends State<BackButtonCar> {


  void _back(){
    Navigator.pop(
        context
    );
  }

  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
      child:
      IconButton(
          onPressed: _back,
          icon:
          const Icon(
            Icons.arrow_back,
            size: 40,
          )
      ),
    );
  }
}

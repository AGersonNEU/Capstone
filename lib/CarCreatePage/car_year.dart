import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CarYearPicker extends StatefulWidget {
  const CarYearPicker({super.key});

  @override
  State<CarYearPicker> createState() => _CarYearPickerState();
}

class _CarYearPickerState extends State<CarYearPicker> {

  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(4),
        ],
      );
  }
}

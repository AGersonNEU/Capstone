import 'package:flutter/cupertino.dart';

class PartSpecs extends StatefulWidget {
  const PartSpecs({super.key});

  @override
  State<PartSpecs> createState() => _PartSpecsState();
}

class _PartSpecsState extends State<PartSpecs> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Center(
          child:
          Align(
            alignment: Alignment.centerLeft,
            child:
            Text(
              'Part Name',
              style:
              TextStyle(
                  fontSize: 20
              ),
            ),
          ),
        ),
        Center(
          child:
          Align(
            alignment: Alignment.center,
            child:
            Text(
              '........................................',
              style:
              TextStyle(
                  fontSize: 20
              ),
            ),
          ),
        ),
        Center(
          child:
            Align(
            alignment: Alignment.centerRight,
            child:
            Text(
              'Price',
              style:
              TextStyle(
                  fontSize: 20
              ),
            ),
          ),
        )
      ],
    );
  }
}

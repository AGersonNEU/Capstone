import 'package:capstone/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
        SingleChildScrollView(
          child:
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child:
                    BackButtonCar(),
                ),
                Center(
                  child:
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child:
                          Text(
                          'What is an OBD Code?',
                          style:
                          TextStyle(
                              fontSize: 30
                          ),
                        ),
                    ),
                ),
                Center(
                  child:
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child:
                          Text(
                          "On-board diagnostics (OBD) is a term referring to a vehicle's self-diagnostic and reporting capability. In the United States, this self diagnostic is a requirement to comply with Federal Emissions standards to detect failures that may increase the vehicle tailpipe emissions to more than 150% of the standard to which it was originally certified.A primary benefit of this is that OBD systems give the vehicle owner or repair technician access to the status of the various vehicle sub-systems. The amount of diagnostic information available via OBD has varied widely since its introduction in the early 1980s versions of onboard vehicle computers.",
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                      ),
                )
              ],
            ),
        ),
    );
  }
}

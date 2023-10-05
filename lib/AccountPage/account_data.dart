import 'package:flutter/cupertino.dart';

class AccountData extends StatefulWidget {
  const AccountData({super.key});

  @override
  State<AccountData> createState() => _AccountDataState();
}

class _AccountDataState extends State<AccountData> {

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:
        Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child:
                  Text(
                    'Name',
                    style:
                      TextStyle(
                        fontSize: 40
                      ),
                  ),
            )
          ],
        ),
    );
  }
}

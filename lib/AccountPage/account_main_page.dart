import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Center(
          child: 
            Column(
              children: [
                const Padding(
                    padding: EdgeInsets.fromLTRB(20,50,20,20),
                    child:
                      Text(
                      'Your Profile',
                        style:
                        TextStyle(
                            fontSize: 50
                        ),
                      )
                ),
                Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,

                    ),
                  child:
                      const CircleAvatar(
                        radius: 100,
                        backgroundImage:
                          NetworkImage(
                            'https://miro.medium.com/v2/resize:fit:1358/1*4oSQOg49I_LRlVUWpgbubg.jpeg',
                          ),
                      )

                )
              ],
            )
        )
      
    );
  }
}

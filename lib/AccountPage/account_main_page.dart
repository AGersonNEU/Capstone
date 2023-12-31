import 'package:capstone/AccountPage/account_data.dart';
import 'package:capstone/AccountPage/log_out_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../HomePage/home_bottom_navbar.dart';

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
          SingleChildScrollView(
            child:
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
                            color: Color(0xFF7c93a1)
                        ),
                        child:
                        const CircleAvatar(
                          radius: 100,
                          backgroundImage:
                          NetworkImage(
                            'https://miro.medium.com/v2/resize:fit:1358/1*4oSQOg49I_LRlVUWpgbubg.jpeg',
                          ),
                        )
                    ),
                    const AccountData(),
                    const LogOutButton()
                  ],
                )
            ),
          ),
      bottomNavigationBar: const BottomAppBar(
          color: Color(0xFFb2c9d6),
          child:
            HomeBottomNav()
      ),
    );
  }
}

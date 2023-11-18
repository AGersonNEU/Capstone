import 'package:capstone/AccountPage/account_main_page.dart';
import 'package:capstone/DiagnosePage/diagnose_main_page.dart';
import 'package:capstone/LogInPage/login_main_page.dart';
import 'package:capstone/VideoPage/video_main_page.dart';
import 'package:capstone/global_variables.dart';
import 'package:capstone/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomNav extends StatefulWidget {
  const HomeBottomNav({super.key});

  @override
  State<HomeBottomNav> createState() => _HomeBottomNavState();
}

class _HomeBottomNavState extends State<HomeBottomNav> with TickerProviderStateMixin{

  void _homePageButton(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage())
    );
  }

  void _videoPageButton(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const VideoPage())
    );
  }

  void _diagnosePageButton(){
    GlobalVariables.diagnose_car_id = 0;
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DiagnosePage())
    );
  }

  void _accountPageButton(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AccountPage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
                onPressed: _homePageButton,
                icon:
                const Icon(
                  Icons.home_outlined,
                  size: 40,
                  color:
                  const Color(0xFF1e1f1e),
                )
            ),
            IconButton(
                onPressed: _videoPageButton,
                icon:
                const Icon(
                  Icons.play_circle_outline,
                  size: 40,
                  color:
                    Color(0xFF1e1f1e),
                )
            ),
            IconButton(
                onPressed: _diagnosePageButton,
                icon:
                const Icon(
                  Icons.construction_sharp,
                  size: 40,
                  color:
                  const Color(0xFF1e1f1e),
                )
            ),
            IconButton(
                onPressed: _accountPageButton,
                icon:
                const Icon(
                  Icons.account_circle_rounded,
                  size: 40,
                  color:
                  const Color(0xFF1e1f1e),
                )
            )
          ],
        );

  }

}


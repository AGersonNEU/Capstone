import 'package:capstone/DiagnosePage/diagnose_main_page.dart';
import 'package:capstone/VideoPage/video_main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomNav extends StatefulWidget {
  const HomeBottomNav({super.key});

  @override
  State<HomeBottomNav> createState() => _HomeBottomNavState();
}

class _HomeBottomNavState extends State<HomeBottomNav> {

  void _homePageButton(){

  }

  void _videoPageButton(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const VideoPage())
    );
  }

  void _diagnosePageButton(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DiagnosePage())
    );
  }

  void _accountPageButton(){

  }

  @override
  Widget build(BuildContext context) {

    return Row(
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
                  const Color(0xFF1e1f1e),
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

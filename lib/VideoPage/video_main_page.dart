import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body:
          Column(
            children: [
              Center(
                child: 
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                      child:
                        Text(
                          'Video Library',
                          style:
                          TextStyle(
                              fontSize: 30
                          ),
                        )
                    )
              ),

            ],
          )
    );
  }
}

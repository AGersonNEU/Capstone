import 'package:capstone/VideoPage/video_playing_screen.dart';
import 'package:capstone/VideoPage/video_search.dart';
import 'package:capstone/VideoPage/video_thumbnail.dart';
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
                      padding: EdgeInsets.fromLTRB(20, 60, 20, 30),
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
              VideoSearch(),
              // Padding(
              //     //padding: EdgeInsets.fromLTRB(5, 10, 10, 5),
              //     child:
                    VideoThumbnail()
              //)
            ],
          )
    );
  }
}

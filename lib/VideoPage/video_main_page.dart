import 'package:capstone/VideoPage/video_playing_screen.dart';
import 'package:capstone/VideoPage/video_search.dart';
import 'package:capstone/VideoPage/video_thumbnail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../HomePage/home_bottom_navbar.dart';

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
            SingleChildScrollView(
              child:
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
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 10, 5),
                        child:
                        VideoThumbnail(
                          videoId: 0,
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 10, 5),
                        child:
                        VideoThumbnail(
                          videoId: 1,
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 10, 5),
                        child:
                        VideoThumbnail(
                            videoId: 2
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 10, 5),
                        child:
                        VideoThumbnail(
                            videoId: 3
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 10, 5),
                        child:
                        VideoThumbnail(
                            videoId: 4
                        )
                    )
                  ],
                ),
            ),
        bottomNavigationBar: BottomAppBar(
            color: Color(0xFFb2c9d6),
              child:
              HomeBottomNav()
              ),
    );
  }
}

import 'package:capstone/VideoPage/video_playing_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoThumbnail extends StatefulWidget {
  const VideoThumbnail({super.key});

  @override
  State<VideoThumbnail> createState() => _VideoThumbnailState();
}

class _VideoThumbnailState extends State<VideoThumbnail> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: 'zLVtD1BvZCU',
    );
    super.initState();
  }

  // void listener(){
  //   setState(() {
  //     _youtubeMetaData = _controller.metadata;
  //   });
  // }

  void _videoPlayingScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const VideoPlaying()));
  }

  @override
  Widget build(BuildContext context) {
    return
      Row(
      children: [
        IconButton(
            onPressed: _videoPlayingScreen,
            icon:
              Image.asset(
                'assets/images/video_thumbnail.webp',
                scale: 7,
              ),

        ),
        Column(

          children: [
              const Row(
                children: [
                  SizedBox(
                    width: 180,
                    child:
                      Text(
                        'mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        softWrap: false,
                        style:
                        TextStyle(
                            fontSize: 20
                        ),
                      )
                  ),
                ],
              ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:
                Align(
                  alignment: Alignment.bottomLeft,
                  child:
                  Text(
                    _controller.metadata.title,
                    style:
                    const TextStyle(
                        fontSize: 10
                    ),
                  ),
                )

            )


          ],
        )
      ],
    );
  }
}

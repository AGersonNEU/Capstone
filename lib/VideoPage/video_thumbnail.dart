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
  late YoutubeMetaData _metaData;



  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        initialVideoId: 'zLVtD1BvZCU'
    )..addListener(listener);
    _metaData = const YoutubeMetaData();
  }

  void listener(){
    setState(() {
      _metaData = _controller.metadata;
    });
  }

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
                Image.network(
                  YoutubePlayer.getThumbnail(videoId: 'zLVtD1BvZCU'),
                  scale: 4,
                )
        ),
       Column(
          children: [
            const Row(
                children: [
                  SizedBox(
                    width: 180,
                    child:
                      Text(
                        'A really long youtube video name',
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
                    _controller.metadata.title.toString(),
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

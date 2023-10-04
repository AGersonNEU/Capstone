import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlaying extends StatefulWidget {
  const VideoPlaying({super.key});

  @override
  State<VideoPlaying> createState() => _VideoPlayingState();
}

class _VideoPlayingState extends State<VideoPlaying> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: 'zLVtD1BvZCU',
      flags:
        const YoutubePlayerFlags(
            autoPlay: true,
            mute: false,
            enableCaption: true,
            
        ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
          Column(
            children: [
              YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child:
                Text(
                  _controller.metadata.title,
                  // overflow: TextOverflow.ellipsis,
                  style:
                    const TextStyle(
                      fontSize: 20
                    ),
                )
              ),
              const Padding(
                  padding:
                    EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10
                    ),
                  child:
                    Text(
                      'Video information maybe a transcript?',
                      style:
                        TextStyle(
                            fontSize: 15
                        ),
                    ),
              )
            ],
        )
    );
  }
}

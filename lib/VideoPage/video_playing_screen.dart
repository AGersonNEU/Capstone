import 'package:capstone/back_button.dart';
import 'package:capstone/global_variables.dart';
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
  YoutubeMetaData _youtubeMetaData = YoutubeMetaData();
  final _videoId = GlobalVariables.video_id;

  void listener(){
    setState(() {
      _youtubeMetaData = _controller.metadata;
    });
  }

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: _videoId,
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
              const BackButtonCar(),
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                  onReady: () {
                  _controller.addListener(listener);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
              Padding(
                  padding:
                    const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10
                    ),
                  child:
                    Text(
                      _controller.metadata.author,
                      style:
                        const TextStyle(
                            fontSize: 15
                        ),
                    ),
              )
            ],
        )
    );
  }
}

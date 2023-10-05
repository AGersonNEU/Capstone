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
  YoutubeMetaData _youtubeMetaData = YoutubeMetaData();

  @override
  void initState() {
    _controller = YoutubePlayerController(initialVideoId: 'zLVtD1BvZCU');
    super.initState();
  }

  void listener(){
    setState(() {
      _youtubeMetaData = _controller.metadata;
    });
  }

  void _videoPlayingScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const VideoPlaying()));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: _videoPlayingScreen,
            icon:
              Image.network(
                'https://i.ytimg.com/an_webp/zLVtD1BvZCU/mqdefault_6s.webp?du=3000&sqp=CJ3y9agG&rs=AOn4CLBrX7uaUaypz93cPHa5W2auYuDoNg ',
                scale: 2,
              )
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            _youtubeMetaData.title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20),
          ),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child:
            Text(
              'Video Author',
              overflow: TextOverflow.ellipsis,
              style:
                TextStyle(
                    fontSize: 10
                ),
            ),
        )
      ],
    );
  }
}

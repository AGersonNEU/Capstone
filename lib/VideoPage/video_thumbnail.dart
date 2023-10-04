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
  final YoutubePlayerController _controller =
      YoutubePlayerController(initialVideoId: 'zLVtD1BvZCU');

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
            icon: Image.network(
              'https://i.ytimg.com/an_webp/zLVtD1BvZCU/mqdefault_6s.webp?du=3000&sqp=CO6C9KgG&rs=AOn4CLDKTIFnvPOJpu68kWlz4O3dY0mNWg',
              scale: 2,
            )),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            _controller.metadata.title,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 15),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
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
    );
  }
}

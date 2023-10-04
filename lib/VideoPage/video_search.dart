import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoSearch extends StatefulWidget {
  const VideoSearch({super.key});

  @override
  State<VideoSearch> createState() => _VideoSearchState();
}

class _VideoSearchState extends State<VideoSearch> {

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'iLnmTe5Q2Qw',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

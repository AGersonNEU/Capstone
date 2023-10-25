import 'dart:convert';


import 'package:capstone/VideoPage/video_playing_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../global_variables.dart';


class VideoThumbnail extends StatefulWidget {
  final int videoId;

  const VideoThumbnail({
    super.key,
    required this.videoId
  });

  @override
  State<VideoThumbnail> createState() => _VideoThumbnailState(videoId);
}

class _VideoThumbnailState extends State<VideoThumbnail> {
  late YoutubePlayerController _controller;
  late YoutubeMetaData _metaData;
  late var _videoTitle = "";
  late var _videoDescription = "";
  late var _videoThumbnail = "";
  late int videoIndex = 1;

  _VideoThumbnailState(int videoId){
    videoIndex = videoId;
  }

Future<dynamic> _findVideoId() async{
  //parses link to uri link
  String ip = GlobalVariables.ip;
  String search = GlobalVariables.video_search;
  int video_index = videoIndex;
  String url = "http://$ip:2030/videoData/$video_index/$search";
  final requestLink = Uri.parse(url);

  //makes the request and returns the body
  Response response = await get(requestLink);
  var jsonBody = jsonDecode(response.body) as Map<String, dynamic>;

    _videoTitle = jsonBody['videoTitle'].toString();
    _videoDescription = jsonBody['videoDesc'].toString();
    GlobalVariables.video_id = jsonBody['videoId'].toString();
    _videoThumbnail = jsonBody['videoThumbnail'].toString();

    if(_videoThumbnail == 'null'){
      _videoThumbnail = 'https://d33v4339jhl8k0.cloudfront.net/docs/assets/591c8a010428634b4a33375c/images/5ab4866b2c7d3a56d8873f4c/file-MrylO8jADD.png';
    }

    if(_videoTitle == 'null'){
      _videoTitle = 'title not found';
    }

    if(_videoDescription == 'null'){
      _videoDescription = 'description not found';
    }

  return response;
}


  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        initialVideoId: GlobalVariables.video_id
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
      FutureBuilder(
          future: _findVideoId(),
          builder: (context, snapshot){
            if(snapshot.hasError){
              return Text(
                'No videos found Error: ${snapshot.error}'
              );
            }else{
              return Row(
                children: [
                  IconButton(
                      onPressed: _videoPlayingScreen,
                      icon:
                          Image.network(
                            _videoThumbnail ?? 'assets/images/video_thumbnail.webp',
                            width: 170,
                          )
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child:
                        Text(
                          _videoTitle,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style:
                          const TextStyle(
                              fontSize: 20
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child:
                          Text(
                          _videoDescription,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          style:
                          const TextStyle(
                              fontSize: 10
                          ),
                        ),
                      )
                    ],
                  )
                ],
              );
            }
          },
      );

  }
}

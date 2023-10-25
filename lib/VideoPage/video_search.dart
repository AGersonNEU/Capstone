import 'package:capstone/VideoPage/video_main_page.dart';
import 'package:capstone/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../global_variables.dart';


class VideoSearch extends StatefulWidget {
  const VideoSearch({super.key});

  @override
  State<VideoSearch> createState() => _VideoSearchState();
}

class _VideoSearchState extends State<VideoSearch> {
  final SearchController controller = SearchController();

  @override
  Widget build(BuildContext context) {
    return
       Row(
         children: [
           SearchAnchor(builder: (context, controller) {
             return Container(
               padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
               width: MediaQuery.of(context).size.width,
               child: SearchBar(
                 controller: controller,
                 backgroundColor: MaterialStateProperty.all(
                     const Color(0xFFf6f9f1)
                 ),
                 leading: const Icon(Icons.search),
                 hintText: 'Search For Videos',
                 onSubmitted: (_){
                   setState(() {
                     GlobalVariables.video_search = controller.text.toString();
                     Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const VideoPage())
                     );
                   });
                 },
               ),
             );
           },
               suggestionsBuilder: (context, controller) {
                  const List<String> suggestions = [
                    'How to change my oil',
                    'How to change my car tire',
                    'How to replace my car battery',
                    'Why is my car overheating'
                  ];

                  return List<ListTile>.generate(3, (int index) {
                    var suggestion = suggestions[index];
                   return ListTile(
                       title: Text(
                           suggestion
                       ),
                       onTap: () {
                         setState(() {
                           GlobalVariables.video_search = controller.text.toString();
                           controller.closeView(suggestion);
                         });
                       });
                 });
           })
         ],
       );
  }
}


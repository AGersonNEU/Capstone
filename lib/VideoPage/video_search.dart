import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
               padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
               width: MediaQuery.of(context).size.width,
               child: SearchBar(
                 controller: controller,
                 backgroundColor: MaterialStateProperty.all(
                     const Color(0xFFf6f9f1)
                 ),
                 leading: const Icon(Icons.search),
                 hintText: 'Search For Videos',
                 onTap: () {
                   controller.openView();
                 },
               ),
             );
           }, suggestionsBuilder: (context, controller) {
             return List<ListTile>.generate(3, (int index) {
               final String item = 'item $index';
               return ListTile(
                   title: Text(item),
                   onTap: () {
                     setState(() {
                       controller.closeView(item);
                     });
                   });
             });
           })
         ],
       );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarSearch extends StatefulWidget {
  const CarSearch({super.key});

  @override
  State<CarSearch> createState() => _CarSearchState();
}

class _CarSearchState extends State<CarSearch> {
  final SearchController controller = SearchController();

  void _foundSearch() {}

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SearchAnchor(builder: (context, controller) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            child: SearchBar(
              controller: controller,
              backgroundColor: MaterialStateProperty.all(
                Color(0xFFf6f9f1)
              ),
              leading: const Icon(Icons.search),
              hintText: 'Search Car Name',
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

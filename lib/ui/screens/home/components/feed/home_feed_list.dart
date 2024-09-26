import 'package:flutter/material.dart';
import 'package:linked_in_clone/ui/screens/home/components/feed/home_feed_item.dart';

class HomeFeedList extends StatefulWidget {
  const HomeFeedList({super.key});

  @override
  State<HomeFeedList> createState() => _HomeFeedListState();
}

class _HomeFeedListState extends State<HomeFeedList> {

  final _items = <Widget>[
    HomeFeedItem(),
    HomeFeedItem(),
    HomeFeedItem(),
    HomeFeedItem(),
    HomeFeedItem(),
    HomeFeedItem(),
    HomeFeedItem(),
    HomeFeedItem(),
    HomeFeedItem(),
    HomeFeedItem(),
    HomeFeedItem(),
    HomeFeedItem(),
    HomeFeedItem(),
    HomeFeedItem(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _items,
    );
  }
}

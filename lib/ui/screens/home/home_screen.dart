import 'package:flutter/material.dart';
import 'package:linked_in_clone/ui/screens/home/components/feed/home_feed_list.dart';
import 'package:linked_in_clone/ui/screens/home/components/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              HomeTopBar(),
              Divider(color: Colors.black12),
              HomeFeedList()
            ],
          ),
        ),
      ),
    );
  }
}

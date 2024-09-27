import 'package:flutter/material.dart';
import 'components/home_feed_item_profile_Info.dart';
import 'components/home_feed_item_profile_picture.dart';

class HomeFeedItem extends StatefulWidget {
  const HomeFeedItem({super.key});

  @override
  State<HomeFeedItem> createState() => _HomeFeedItemState();
}

class _HomeFeedItemState extends State<HomeFeedItem> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      child: Column(
        children: [
          HomeFeedItemTop()
        ],
      ),
    );
  }
}

class HomeFeedItemTop extends StatelessWidget {
  const HomeFeedItemTop({super.key});

  @override
  Widget build(BuildContext context) {
    return const IntrinsicHeight(
      child: Row(
        children: [
          HomeFeedItemProfilePicture(),
          SizedBox(width: 10),
          HomeFeedItemProfileInfo(),
          SizedBox(width: 10),
          Align(
            alignment: Alignment.topRight,
            child: HomeFeedItemDynamicButton(),
          ),
        ],
      ),
    );
  }
}

class HomeFeedItemDynamicButton extends StatelessWidget {
  const HomeFeedItemDynamicButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { },
      child: const Row(
        children: [
          Icon(
            Icons.add,
            size: 10,
            color: Colors.blueAccent,
          ),
          SizedBox(width: 3),
          Text(
            "Follow",
            style: TextStyle(color: Colors.blueAccent),
          ),
        ],
      ),
    );
  }
}







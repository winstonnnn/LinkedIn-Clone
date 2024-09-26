import 'package:flutter/material.dart';

class HomeFeedItemProfileInfo extends StatelessWidget {
  const HomeFeedItemProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sample Name",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.black87
            ),
          ),
          Text(
            "Sample Job Info | Sample Job Info | Sample Job Info",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black87
            ),
          ),
          Row(
            children: [
              Text(
                "1d . ",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87
                ),
              ),
              Icon(
                Icons.public,
                size: 12,
              )
            ],
          )
        ],
      ),
    );
  }
}
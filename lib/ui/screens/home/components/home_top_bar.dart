import 'package:flutter/material.dart';
import 'package:linked_in_clone/ui/screens/home/components/home_top_search_bar.dart';

import '../../../common/widgets/circular_image.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, top: 5, right: 18, bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircularNetworkImage(
            height: 35,
            width: 35,
            imageURL: "https://media.licdn.com/dms/image/v2/D5603AQE1jRhi_L4o8g/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1714742861336?e=1732752000&v=beta&t=75lsDHW7jud1Kq1Ia5i3DiSqme7jHWsF-LoX-aQnKy4",
          ),

          const SizedBox(width: 10,),

          const Flexible(
              flex: 1,
              child: HomeTopSearchBar()
          ),

          const SizedBox(width: 10,),

          const Icon(
            Icons.chat,
            color: Colors.black54,
          )
        ],
      ),
    );
  }
}

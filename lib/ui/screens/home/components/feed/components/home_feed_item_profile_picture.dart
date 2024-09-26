import 'package:flutter/material.dart';

import '../../../../../common/widgets/circular_image.dart';

class HomeFeedItemProfilePicture extends StatelessWidget {
  const HomeFeedItemProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularNetworkImage(
        height: 50,
        width: 50,
        imageURL: "https://media.licdn.com/dms/image/v2/D5603AQE1jRhi_L4o8g/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1714742861336?e=1732752000&v=beta&t=75lsDHW7jud1Kq1Ia5i3DiSqme7jHWsF-LoX-aQnKy4"
    );
  }
}
import 'package:flutter/material.dart';

class CircularAssetImage extends StatelessWidget {
  CircularAssetImage({
    super.key,
    required this.height,
    required this.width,
    required this.imageAssetLocation,
  });

  var height = 0.0;
  var width = 0.0;
  var imageAssetLocation = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: CircleAvatar(
        backgroundImage: AssetImage(imageAssetLocation),
      ),
    );
  }
}

class CircularNetworkImage extends StatelessWidget {
  CircularNetworkImage({
    super.key,
    required this.height,
    required this.width,
    required this.imageURL,
  });

  var height = 0.0;
  var width = 0.0;
  var imageURL = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: CircleAvatar(
        backgroundImage: NetworkImage(imageURL),
      ),
    );
  }
}

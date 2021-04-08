import 'package:flutter/material.dart';

class PhotoDetails extends StatelessWidget {
  final String imageUrl;

  const PhotoDetails({Key key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InteractiveViewer(
        clipBehavior: Clip.none,
        child: Image.network(
          imageUrl,
        ),
      ),
    );
  }
}

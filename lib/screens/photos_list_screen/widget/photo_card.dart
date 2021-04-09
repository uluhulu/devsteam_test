import 'package:devsteam_test/consts/style.dart';
import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({
    Key key,
    this.imageUrl,
    this.imageName,
    this.imageAuthor,
    this.navigateToPhotoDetailsScreen,
  }) : super(key: key);

  final String imageUrl;
  final String imageName;
  final String imageAuthor;
  final Function(String imageUrl) navigateToPhotoDetailsScreen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => navigateToPhotoDetailsScreen(imageUrl),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(blurRadius: 10, color: Colors.black.withOpacity(0.8)),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      imageName,
                      style: mainTextStyle,
                    ),
                    Text(
                      imageAuthor,
                      style: mainTextStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

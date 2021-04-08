import 'package:devsteam_test/consts/style.dart';
import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({
    Key key,
    this.imageUrl,
    this.imageName,
    this.imageAuthor,
  }) : super(key: key);

  final String imageUrl;
  final String imageName;
  final String imageAuthor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(blurRadius: 10,
                color: Colors.black.withOpacity(0.8)),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              child: Image.network(
                imageUrl,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        imageName,
                        style: mainTextStyle,
                      ),
                      Text(
                        imageAuthor,
                        style: mainTextStyle,

                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

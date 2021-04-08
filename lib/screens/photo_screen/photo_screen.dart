import 'package:devsteam_test/consts/colors.dart';
import 'package:devsteam_test/screens/photo_screen/widget/photo_details.dart';
import 'package:flutter/material.dart';

class PhotoDetailsScreen extends StatefulWidget {
  final String imageUrl;

  const PhotoDetailsScreen({Key key, this.imageUrl}) : super(key: key);

  @override
  _PhotoDetailsScreenState createState() => _PhotoDetailsScreenState();
}

class _PhotoDetailsScreenState extends State<PhotoDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: photoViewBackground,
      body: Stack(
        children: [
          PhotoDetails(imageUrl: widget.imageUrl),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 40),
            child: IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: () => Navigator.pop(context),
              color: buttonColor,
            ),
          )
        ],
      ),
    );
  }
}

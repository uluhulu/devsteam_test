import 'package:devsteam_test/screens/photos_list_screen/widget/photo_card.dart';
import 'package:flutter/material.dart';

class PhotosList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context,index){
              return PhotoCard(
                imageUrl: 'https://i.pinimg.com/originals/f8/63/55/f86355fcc3cd487a001b968797e65881.jpg',
                imageAuthor: 'Author',
                imageName: 'Name',
              );
            },
      )),
    );
  }
}

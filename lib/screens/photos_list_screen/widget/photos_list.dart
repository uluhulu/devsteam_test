import 'package:devsteam_test/consts/strings.dart';
import 'package:devsteam_test/screens/photos_list_screen/bloc/photos_list_screen_bloc.dart';
import 'package:devsteam_test/screens/photos_list_screen/bloc/photos_list_screen_state.dart';
import 'package:devsteam_test/screens/photos_list_screen/widget/photo_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotosList extends StatelessWidget {
  const PhotosList({
    Key key,
    this.navigateToPhotoDetailsScreen,
  }) : super(key: key);

  final Function(String imageUrl) navigateToPhotoDetailsScreen;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<PhotosListScreenBloc, PhotosListScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          ///initial
          if (state is PhotosLoading) {
            return Center(
              child: Container(
                width: 32,
                height: 32,
                child: CircularProgressIndicator(),
              ),
            );
          }

          ///success
          if (state is PhotosLoaded) {
            return ListView.builder(
              itemCount: state.photosList.length,
              itemBuilder: (context, index) {
                final photo = state.photosList[index];
                return PhotoCard(
                  imageUrl: photo.urls.small,
                  imageName: photo.description ?? noDiscription,
                  imageAuthor: photo.user.username,
                  navigateToPhotoDetailsScreen: navigateToPhotoDetailsScreen,
                );
              },
            );
          }

          ///error
          if (state is PhotosLoadingError) {}

          return Container();
        },
      ),
    );
  }
}

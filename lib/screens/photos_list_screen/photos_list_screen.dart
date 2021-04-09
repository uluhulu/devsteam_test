import 'package:devsteam_test/domain/interactor/photos_interactor.dart';
import 'package:devsteam_test/di.dart';
import 'package:devsteam_test/screens/photo_screen/photo_screen.dart';
import 'package:devsteam_test/screens/photos_list_screen/bloc/photos_list_screen_bloc.dart';
import 'package:devsteam_test/screens/photos_list_screen/widget/photos_list.dart';
import 'package:devsteam_test/util/route_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotosListScreen extends StatefulWidget {
  @override
  _PhotosListScreenState createState() => _PhotosListScreenState();
}

class _PhotosListScreenState extends State<PhotosListScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return PhotosListScreenBloc(
          photosInteractor: getIt<PhotosInteractor>(),
        );
      },
      child: Scaffold(
        body: PhotosList(
          navigateToPhotoDetailsScreen: _navigateToPhotoDetailsScreen,
        ),
      ),
    );
  }

  void _navigateToPhotoDetailsScreen(String imageUrl) {
    Navigator.of(context).push(
      buildRoute(
        page: PhotoDetailsScreen(
          imageUrl: imageUrl,
        ),
      ),
    );
  }
}


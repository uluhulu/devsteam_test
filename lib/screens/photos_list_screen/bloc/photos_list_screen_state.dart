import 'package:devsteam_test/data/model/photo.dart';

class PhotosListScreenState {}

class PhotosLoaded extends PhotosListScreenState {
  final List<Photo> photosList;

  PhotosLoaded({this.photosList});
}

class PhotosLoading extends PhotosListScreenState {}

class PhotosLoadingError extends PhotosListScreenState {}

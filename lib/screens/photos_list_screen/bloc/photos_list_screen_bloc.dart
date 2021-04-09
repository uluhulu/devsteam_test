import 'package:devsteam_test/domain/interactor/photos_interactor.dart';
import 'package:devsteam_test/screens/photos_list_screen/bloc/photos_list_screen_event.dart';
import 'package:devsteam_test/screens/photos_list_screen/bloc/photos_list_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotosListScreenBloc
    extends Bloc<PhotosListScreenEvent, PhotosListScreenState> {
  PhotosListScreenBloc({this.photosInteractor})
      : super(PhotosListScreenState()) {
    add(LoadPhotos());
  }

  final PhotosInteractor photosInteractor;

  @override
  Stream<PhotosListScreenState> mapEventToState(
      PhotosListScreenEvent event) async* {
    yield* _mapLoadPhotosEvent(event);
  }

  Stream<PhotosListScreenState> _mapLoadPhotosEvent(
      PhotosListScreenEvent event) async* {
    if (event is LoadPhotos) {
      try {
        yield PhotosLoading();
        final photosList = await photosInteractor.loadPhotos();
        yield PhotosLoaded(
          photosList: photosList,
        );
      } catch (e) {
        yield PhotosLoadingError();
      }
    }
  }
}

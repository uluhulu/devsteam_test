import 'package:devsteam_test/data/model/photo.dart';
import 'package:devsteam_test/data/repository/photos_repository.dart';

class PhotosInteractor {
  final PhotosRepository _photosRepository;

  PhotosInteractor(this._photosRepository);

  Future<List<Photo>> loadPhotos() async {
    return _photosRepository.loadPhotos();
  }
}

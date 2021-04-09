import 'package:devsteam_test/domain/interactor/photos_interactor.dart';
import 'package:devsteam_test/data/repository/photos_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initDi() {
  getIt.registerSingleton<PhotosInteractor>(
    PhotosInteractor(
      PhotosRepository(),
    ),
  );
}

import 'dart:convert';

import 'package:devsteam_test/consts/urls.dart';
import 'package:devsteam_test/data/model/photo.dart';
import 'package:http/http.dart';

class PhotosRepository {
  Future<List<Photo>> loadPhotos() async {
    var response = await get(
      Uri.https(base, photo, {
        'client_id': 'fDBzL0DYXJYJto8cs3tXzTynLWeNPCwLwv7VDXLrhX4',
      }),
    );

    final responseJson = jsonDecode(response.body) as List;

    List<Photo> photos = responseJson.map((model) {
      final photo = Photo.fromJson(model);
      return photo;
    }).toList();

    return photos;
  }
}

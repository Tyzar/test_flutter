import 'package:dio/dio.dart';
import 'package:fluteqboot/functional/functional.dart';
import 'package:test_flutter/presentations/test4/models/photo.dart';

class PhotoProviders {
  final Dio _dio;

  PhotoProviders(this._dio);

  final List<Photo> _mCached = [];

  Future<Or<String, List<Photo>>> loadPhotos() async {
    try {
      final resp = await _dio
          .get('https://jsonplaceholder.typicode.com/albums/1/photos');
      final respData = PhotoResponse.fromJson(jsonList: resp.data);
      _mCached.clear();
      _mCached.addAll(respData.data);
      return Right(respData.data);
    } catch (e) {
      return Left('Failed to load data');
    }
  }

  Photo? getPhotoById({required int photoId}) {
    for (var photo in _mCached) {
      if (photo.id == photoId) {
        return photo;
      }
    }

    return null;
  }
}

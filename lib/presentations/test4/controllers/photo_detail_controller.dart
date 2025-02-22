import 'package:fluteqboot/controllers/base_controller.dart';
import 'package:test_flutter/presentations/test4/models/photo.dart';
import 'package:test_flutter/presentations/test4/providers/photo_providers.dart';

class PhotoDetailController extends Controller<Photo?> {
  PhotoDetailController(this._photoProviders) : super(initState: null);

  final PhotoProviders _photoProviders;

  void getDetail({required int photoId}) {
    final photo = _photoProviders.getPhotoById(photoId: photoId);
    emit(photo);
  }
}

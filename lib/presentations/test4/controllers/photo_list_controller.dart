import 'package:fluteqboot/controllers/base_controller.dart';
import 'package:test_flutter/presentations/test4/models/photo.dart';
import 'package:fluteqboot/functional/functional.dart';
import 'package:test_flutter/presentations/test4/providers/photo_providers.dart';

//state
class PhotoListState {
  final List<Photo> photos;
  final bool isLoading;

  PhotoListState({required this.photos, this.isLoading = false});

  PhotoListState copyWith({List<Photo>? photos, bool? isLoading}) =>
      PhotoListState(
        photos: photos ?? this.photos,
        isLoading: isLoading ?? false,
      );
}

class PhotoListController extends Controller<PhotoListState> {
  PhotoListController(this._photoProvider)
      : super(initState: PhotoListState(photos: []));

  final PhotoProviders _photoProvider;

  Future<void> initialize() async {
    emit(state.copyWith(isLoading: true));

    final result = await _photoProvider.loadPhotos();
    if (result is Left<String, List<Photo>>) {
      emit(state.copyWith(photos: []));
    } else {
      emit(state.copyWith(photos: (result as Right).value));
    }
  }
}

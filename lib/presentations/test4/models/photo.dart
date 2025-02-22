class Photo {
  final int id;
  final int albumId;
  final String title;
  final String uri;
  final String thumbnailUri;

  Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.uri,
    required this.thumbnailUri,
  });
}

class PhotoResponse {
  final List<Photo> data;

  PhotoResponse({required this.data});

  static PhotoResponse fromJson({required List<dynamic> jsonList}) {
    return PhotoResponse(
        data: jsonList.isEmpty
            ? []
            : jsonList
                .map(
                  (e) => Photo(
                    id: e['id'],
                    albumId: e['albumId'],
                    title: e['title'],
                    uri: e['url'],
                    thumbnailUri: e['thumbnailUrl'],
                  ),
                )
                .toList());
  }
}

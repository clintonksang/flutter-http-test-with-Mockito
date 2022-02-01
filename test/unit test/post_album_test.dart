import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdevtest/models/album_post.dart';
import 'package:flutterdevtest/services/post_album.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([http.Client])
import 'package:flutter_test/flutter_test.dart';

import 'post_album_test.mocks.dart';

void main() {
  group('Given Album -', () {
    test('when POst is run, should return status 200', () async {
      final client = MockPostsClient();

      // when(client.post(Uri.parse(albumUrl)),
      // headers: {"Content-Type": "application/json"},

      // .then((_) async =>
      //     http.Response('{id: 1, userId: 1, title: "mocks"}', 200)));
      when(client.post(any, headers: anyNamed('headers'))).thenAnswer(
        (_) => Future.value(Response('body', 200)),
      );

      expect(await createAlbum('title'), isA<AlbumPost>());
    });
  });
}

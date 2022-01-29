import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdevtest/constants/constants.dart';
import 'package:flutterdevtest/models/album_model.dart';
import 'package:flutterdevtest/services/album_service.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'fetch_album_test.mocks.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([http.Client])
void main() {
  group('Albums test', () {
    test('when called returns 200', () async {
      final client = MockClient();

      when(client.get(Uri.parse(albumUrl)).then((_) async =>
          http.Response('{id: 1, userId: 1, title: "mocks"}', 200)));

      expect(await fetchAlbum(), isA<Album>());
    });
  });
}

  // test('returns an Album if the http call completes successfully', () async {
  //     final client = MockClient();

  //     // Use Mockito to return a successful response when it calls the
  //     // provided http.Client.
  //     when(client.get(Uri.parse(albumUrl))).thenAnswer((_) async {
  //       return http.Response('{"userId": 1, "id": 2, "title": "mock"}', 200);
  //     });

  //     expect(await fetchAlbum(), isA<Album>());
  //   });
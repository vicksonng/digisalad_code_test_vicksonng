import 'package:digisalad_code_test_vicksonng/models/music.dart';
import 'package:digisalad_code_test_vicksonng/networks/http_client.dart';
import 'package:digisalad_code_test_vicksonng/networks/itunes/dtos/itunes_response_dto/itunes_response_dto.dart';
import 'package:digisalad_code_test_vicksonng/networks/itunes/service/itunes_service.dart';
import 'package:get_it/get_it.dart';

class ItunesRespository {
  final ITunesService _itunesService = ITunesService(
    GetIt.I<ItunesHttpClient>().instance,
  );

  Future<List<Music>> search({
    required String term,
    String? media,
    int? limit,
    int? offset,
  }) async {
    final ItunesResponseDto _dto = await _itunesService.search(
      term: term,
      media: media,
      limit: limit,
      offset: offset,
    );

    return _dto.results.map(Music.fromDto).toList();
  }
}

import 'package:digisalad_code_test_vicksonng/config/constants.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music.dart';
import 'package:digisalad_code_test_vicksonng/networks/http_client.dart';
import 'package:digisalad_code_test_vicksonng/networks/itunes/dtos/itunes_music_res_dto/itunes_music_res_dto.dart';
import 'package:digisalad_code_test_vicksonng/networks/itunes/service/itunes_service.dart';
import 'package:get_it/get_it.dart';

class ItunesRepository {
  final ITunesService _itunesService = ITunesService(
    GetIt.I<ItunesHttpClient>().instance,
  );

  Future<List<Music>> searchMusic({
    required String term,
    int? limit,
    int? offset,
  }) async {
    final ItunesMusicResDto _dto = await _itunesService.searchMusic(
      term: term,
      limit: searchLimit,
      offset: offset,
    );

    return _dto.results.map(Music.fromDto).toList();
  }
}

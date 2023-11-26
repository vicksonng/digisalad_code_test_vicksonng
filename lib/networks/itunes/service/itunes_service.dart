import 'package:digisalad_code_test_vicksonng/networks/itunes/dtos/itunes_music_res_dto/itunes_music_res_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'itunes_service.g.dart';

@RestApi(baseUrl: 'https://itunes.apple.com/')
abstract class ITunesService {
  factory ITunesService(Dio dio, {String baseUrl}) = _ITunesService;

  @GET('/search?media=music&entity=song')
  Future<ItunesMusicResDto> searchMusic({
    @Query('term', encoded: true) required String term,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });
}

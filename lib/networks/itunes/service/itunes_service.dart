import 'package:digisalad_code_test_vicksonng/networks/itunes/dtos/itunes_response_dto/itunes_response_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'itunes_service.g.dart';

@RestApi(baseUrl: 'https://itunes.apple.com/')
abstract class ITunesService {
  factory ITunesService(Dio dio, {String baseUrl}) = _ITunesService;

  @GET('/search')
  Future<ItunesResponseDto> search({
    @Query('term', encoded: true) required String term,
    @Query('media') String? media,
    @Query('limit') int? limit,
    @Query('entity') String? entity,
    @Query('offset') int? offset,
  });
}

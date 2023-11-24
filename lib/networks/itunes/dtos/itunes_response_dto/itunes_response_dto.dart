import 'package:digisalad_code_test_vicksonng/networks/itunes/dtos/music_dto/music_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'itunes_response_dto.freezed.dart';
part 'itunes_response_dto.g.dart';

@freezed
class ItunesResponseDto with _$ItunesResponseDto {
  const factory ItunesResponseDto({
    required int resultCount,
    required List<MusicDTO> results,
  }) = _ItunesResponseDto;

  factory ItunesResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ItunesResponseDtoFromJson(json);
}

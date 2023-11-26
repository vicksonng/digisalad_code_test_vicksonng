import 'package:digisalad_code_test_vicksonng/networks/itunes/dtos/music_dto/music_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'itunes_music_res_dto.freezed.dart';
part 'itunes_music_res_dto.g.dart';

@freezed
class ItunesMusicResDto with _$ItunesMusicResDto {
  const factory ItunesMusicResDto({
    required int resultCount,
    required List<MusicDTO> results,
  }) = _ItunesMusicResDto;

  factory ItunesMusicResDto.fromJson(Map<String, dynamic> json) =>
      _$ItunesMusicResDtoFromJson(json);
}

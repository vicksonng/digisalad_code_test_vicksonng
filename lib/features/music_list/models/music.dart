import 'package:digisalad_code_test_vicksonng/networks/itunes/dtos/music_dto/music_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'music.freezed.dart';

@freezed
class Music with _$Music {
  const factory Music({
    required int id,
    required String artistName,
    required String collectionName,
    required String trackName,
    required String previewUrl,
    String? artworkUrl100,
    String? artworkUrl30,
  }) = _Music;

  factory Music.fromDto(MusicDTO dto) {
    return Music(
      id: dto.trackId,
      artistName: dto.artistName,
      collectionName: dto.collectionName,
      trackName: dto.trackName,
      previewUrl: dto.previewUrl,
      artworkUrl100: dto.artworkUrl100,
      artworkUrl30: dto.artworkUrl30,
    );
  }
}

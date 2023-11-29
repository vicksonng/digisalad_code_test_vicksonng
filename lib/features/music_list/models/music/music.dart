import 'package:digisalad_code_test_vicksonng/networks/itunes/dtos/music_dto/music_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'music.freezed.dart';
part 'music.g.dart';

@freezed
class Music extends HiveObject with _$Music {
  Music._();

  @HiveType(typeId: 0)
  factory Music({
    @HiveField(0) required int id,
    @HiveField(1) required String artistName,
    @HiveField(2) required String collectionName,
    @HiveField(3) required String trackName,
    @HiveField(4) required String previewUrl,
    @HiveField(5) String? artworkUrl100,
    @HiveField(6) String? artworkUrl30,
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

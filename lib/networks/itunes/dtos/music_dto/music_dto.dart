import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_dto.freezed.dart';
part 'music_dto.g.dart';

@freezed
class MusicDTO with _$MusicDTO {
  const factory MusicDTO({
    required int trackId,
    required String artistName,
    required String collectionName,
    required String trackName,
    required String previewUrl,
    String? artworkUrl100,
    String? artworkUrl30,
  }) = _MusicDTO;

  factory MusicDTO.fromJson(Map<String, dynamic> json) =>
      _$MusicDTOFromJson(json);
}

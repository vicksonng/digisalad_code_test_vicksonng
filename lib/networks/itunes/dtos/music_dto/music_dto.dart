import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_dto.freezed.dart';
part 'music_dto.g.dart';

@freezed
class MusicDTO with _$MusicDTO {
  const factory MusicDTO({
    String? artistName,
    String? collectionName,
    String? trackName,
    String? artworkUrl100,
    required int trackId,
    required String previewUrl,
  }) = _MusicDTO;

  factory MusicDTO.fromJson(Map<String, dynamic> json) =>
      _$MusicDTOFromJson(json);
}

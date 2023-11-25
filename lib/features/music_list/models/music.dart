import 'package:digisalad_code_test_vicksonng/networks/itunes/dtos/music_dto/music_dto.dart';

class Music {
  final String? artistName;
  final String? collectionName;
  final String? trackName;
  final String? artworkUrl100;
  final String previewUrl;

  Music({
    required this.artistName,
    required this.collectionName,
    required this.trackName,
    required this.artworkUrl100,
    required this.previewUrl,
  });

  factory Music.fromDto(MusicDTO dto) {
    return Music(
      artistName: dto.artistName,
      collectionName: dto.collectionName,
      trackName: dto.trackName,
      artworkUrl100: dto.artworkUrl100,
      previewUrl: dto.previewUrl,
    );
  }
}

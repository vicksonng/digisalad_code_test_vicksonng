import 'package:digisalad_code_test_vicksonng/features/audio_player/view/widgets/audio_play_button.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music.dart';
import 'package:digisalad_code_test_vicksonng/widgets/cached_image.dart';
import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  final Music music;

  const MusicCard({
    super.key,
    required this.music,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      style: ListTileStyle.drawer,
      leading: _leading(),
      title: _title(),
      subtitle: _subtitle(),
      trailing: _trailing(),
    );
  }

  Widget _leading() {
    return CachedImage(url: music.artworkUrl100);
  }

  Widget _title() {
    return Text(music.trackName);
  }

  Widget _subtitle() {
    return Text(music.collectionName);
  }

  Widget _trailing() {
    return AudioPlayButton(music: music);
  }
}

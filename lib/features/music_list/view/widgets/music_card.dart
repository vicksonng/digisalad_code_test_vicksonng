import 'package:digisalad_code_test_vicksonng/features/audio_player/view/widgets/audio_play_button.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music/music.dart';
import 'package:digisalad_code_test_vicksonng/styles/unified_size.dart';
import 'package:digisalad_code_test_vicksonng/widgets/cached_image.dart';
import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({
    super.key,
    required this.music,
    required this.onTap,
  });

  final Music music;
  final VoidCallback onTap;

  Widget _leading() {
    return Hero(
      tag: music.id,
      child: AspectRatio(
        aspectRatio: 1,
        child: CachedImage(
          url: music.artworkUrl30,
          fit: BoxFit.fill,
          height: xlSize,
        ),
      ),
    );
  }

  Widget _title() {
    return Text(
      music.trackName,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }

  Widget _subtitle() {
    return Text(
      music.collectionName,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _trailing() {
    return AudioPlayButton(music: music);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      style: ListTileStyle.drawer,
      leading: _leading(),
      title: _title(),
      subtitle: _subtitle(),
      trailing: _trailing(),
    );
  }
}

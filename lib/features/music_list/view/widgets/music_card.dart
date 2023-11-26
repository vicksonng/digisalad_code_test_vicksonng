import 'package:digisalad_code_test_vicksonng/features/audio_player/controller/audio_player_controller.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music.dart';
import 'package:digisalad_code_test_vicksonng/widgets/cached_image.dart';
import 'package:digisalad_code_test_vicksonng/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_it/get_it.dart';

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
    return Text(music.trackName ?? '');
  }

  Widget _subtitle() {
    return Text(music.collectionName ?? '');
  }

  Widget _trailing() {
    final AudioPlayerController _controller =
        GetIt.I.get<AudioPlayerController>();

    return Obx(() {
      if (_controller.playingTrackId == music.id) {
        if (_controller.isLoading) {
          return const IconButton(
            onPressed: null,
            icon: Loading(),
          );
        }
        return IconButton(
          onPressed: _controller.pause,
          icon: const Icon(Icons.pause),
        );
      }
      return IconButton(
        onPressed: () => _controller.play(music),
        icon: const Icon(Icons.play_arrow),
      );
    });
  }
}

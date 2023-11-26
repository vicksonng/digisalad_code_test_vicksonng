import 'package:digisalad_code_test_vicksonng/features/audio_player/controller/audio_player_controller.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music.dart';
import 'package:digisalad_code_test_vicksonng/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class AudioPlayButton extends StatelessWidget {
  const AudioPlayButton({
    super.key,
    required this.music,
  });

  final Music music;

  AudioPlayerController get _controller => GetIt.I.get<AudioPlayerController>();

  @override
  Widget build(BuildContext context) {
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

import 'package:digisalad_code_test_vicksonng/features/audio_player/view/widgets/audio_play_button.dart';
import 'package:digisalad_code_test_vicksonng/features/music_detail/controller/music_detail_page_controller.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music/music.dart';
import 'package:digisalad_code_test_vicksonng/styles/unified_gap.dart';
import 'package:digisalad_code_test_vicksonng/styles/unified_padding.dart';
import 'package:digisalad_code_test_vicksonng/styles/unified_size.dart';
import 'package:digisalad_code_test_vicksonng/widgets/cached_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MusicDetailPage extends GetView<MusicDetailPageController> {
  const MusicDetailPage({super.key});

  Music get music => controller.music;

  Widget _image() {
    return AspectRatio(
      aspectRatio: 1,
      child: Hero(
        tag: music.id,
        child: CachedImage(
          url: music.artworkUrl100,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget _trackName(BuildContext context) {
    return Text(
      music.trackName,
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }

  Widget _scrollableContent(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                _artistName(context),
                UnifiedGap.md,
                _collectionName(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _artistName(BuildContext context) {
    return Text(
      music.artistName,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }

  Widget _collectionName(BuildContext context) {
    return Text(
      music.collectionName,
      // softWrap: true,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }

  Widget _playButton() {
    return AudioPlayButton(
      music: music,
      size: xlSize,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: UnifiedPadding.pagePadding,
          child: Column(
            children: [
              _image(),
              UnifiedGap.md,
              _trackName(context),
              UnifiedGap.md,
              Expanded(
                child: _scrollableContent(context),
              ),
              UnifiedGap.md,
              _playButton(),
            ],
          ),
        ),
      ),
    );
  }
}

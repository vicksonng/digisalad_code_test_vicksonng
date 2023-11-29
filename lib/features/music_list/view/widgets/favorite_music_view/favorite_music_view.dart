import 'package:digisalad_code_test_vicksonng/features/music_list/controller/music_list_page_controller.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music/music.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/view/widgets/favorite_music_view/no_favorite_item.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/view/widgets/music_card.dart';
import 'package:digisalad_code_test_vicksonng/styles/unified_padding.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class FavoriteMusicView extends StatelessWidget {
  const FavoriteMusicView({
    super.key,
    required this.controller,
  });

  final MusicListPageController controller;

  Widget _actionBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Text(
            'view.musicList.addedFavoriteNumber'.tr(
              args: [
                controller.favoriteSongs.length.toString(),
              ],
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: controller.clearFavoriteSongs,
        ),
      ],
    );
  }

  Widget _favoriteList() {
    return ListView.builder(
      itemCount: controller.favoriteSongs.length,
      itemBuilder: (BuildContext context, int index) {
        final Music music = controller.favoriteSongs[index];
        return MusicCard(
          music: music,
          onTap: () {
            controller.navigateToMusicDetail(music);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.favoriteSongs.isEmpty) {
        return const NoFavoriteItem();
      }
      return Column(
        children: [
          Padding(
            padding: UnifiedPadding.horizontalMd,
            child: _actionBar(),
          ),
          Expanded(
            child: _favoriteList(),
          ),
        ],
      );
    });
  }
}

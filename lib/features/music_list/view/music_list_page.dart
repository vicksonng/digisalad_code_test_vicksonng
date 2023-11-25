import 'package:digisalad_code_test_vicksonng/config/messages.dart';
import 'package:digisalad_code_test_vicksonng/extensions/string_extension.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/controller/music_list_page_controller.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/view/widgets/music_card.dart';
import 'package:digisalad_code_test_vicksonng/style/unified_padding.dart';
import 'package:digisalad_code_test_vicksonng/widgets/simple_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MusicListPage extends GetView<MusicListPageController> {
  const MusicListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: UnifiedPadding.allMd,
              child: _searchBar(),
            ),
            Expanded(
              child: _body(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchBar() {
    return SimpleSearchBar(
      onSubmitted: (String value) {
        controller.searchMusics(value.parseItuneSearchTerm);
      },
    );
  }

  Widget _body() {
    return Obx(() {
      if (controller.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (controller.errorMessage.isNotEmpty) {
        return Center(
          child: Text(controller.errorMessage),
        );
      } else if (controller.musics.isEmpty) {
        return const Center(
          child: Text(Messages.errorNoItemsFound),
        );
      }
      return _musicsList(controller.musics);
    });
  }

  Widget _musicsList(List<Music> musics) {
    return ListView.builder(
      padding: UnifiedPadding.verticalMd,
      itemCount: musics.length,
      itemBuilder: (context, index) {
        return MusicCard(
          music: musics[index],
        );
      },
    );
  }
}

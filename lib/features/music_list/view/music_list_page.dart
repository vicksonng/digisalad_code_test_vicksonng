import 'package:digisalad_code_test_vicksonng/features/music_list/controller/music_list_page_controller.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music/music.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/view/widgets/music_card.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/view/widgets/music_list_shimmer.dart';
import 'package:digisalad_code_test_vicksonng/styles/unified_padding.dart';
import 'package:digisalad_code_test_vicksonng/utils/common_utils.dart';
import 'package:digisalad_code_test_vicksonng/widgets/custom_app_bar.dart';
import 'package:digisalad_code_test_vicksonng/widgets/language_button.dart';
import 'package:digisalad_code_test_vicksonng/widgets/loading.dart';
import 'package:digisalad_code_test_vicksonng/widgets/simple_search_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MusicListPage extends GetView<MusicListPageController> {
  const MusicListPage({super.key});

  Widget _searchBar() {
    return SimpleSearchBar(
      placeholder: 'view.musicList.searchBarPlaceHolder'.tr(),
      onSubmitted: (String value) {
        controller.searchMusics(value);
      },
    );
  }

  Widget _welcome() {
    return Center(
      child: Text('view.musicList.searchBarPlaceHolder'.tr()),
    );
  }

  Widget _paginatedMusicList() {
    return PagedListView<int, Music>(
      pagingController: controller.pagingController,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      builderDelegate: PagedChildBuilderDelegate<Music>(
        itemBuilder: (BuildContext context, Music music, _) => MusicCard(
          music: music,
          onTap: () => controller.navigateToMusicDetail(music),
        ),
        newPageProgressIndicatorBuilder: (_) => const Center(
          child: Loading(),
        ),
        firstPageProgressIndicatorBuilder: (_) {
          return const MusicListShimmer();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        actions: [
          LanguageButton(),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: UnifiedPadding.allMd,
              child: _searchBar(),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => unfocusAllNodes(context),
                child: Obx(
                  () {
                    if (controller.keyword.isEmpty) {
                      return _welcome();
                    }
                    return _paginatedMusicList();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

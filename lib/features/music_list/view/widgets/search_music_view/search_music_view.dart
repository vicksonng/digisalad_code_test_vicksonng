import 'package:digisalad_code_test_vicksonng/features/music_list/controller/music_list_page_controller.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music/music.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/view/widgets/music_card.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/view/widgets/music_list_shimmer.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/view/widgets/retry_search_error.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/view/widgets/search_music_view/welcome_message.dart';
import 'package:digisalad_code_test_vicksonng/styles/unified_padding.dart';
import 'package:digisalad_code_test_vicksonng/utils/common_utils.dart';
import 'package:digisalad_code_test_vicksonng/widgets/icon_message.dart';
import 'package:digisalad_code_test_vicksonng/widgets/loading.dart';
import 'package:digisalad_code_test_vicksonng/widgets/simple_search_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SearchMusicView extends StatelessWidget {
  const SearchMusicView({
    super.key,
    required this.controller,
  });

  final MusicListPageController controller;

  Widget _searchBar() {
    return SimpleSearchBar(
      placeholder: 'view.musicList.searchBarPlaceHolder'.tr(),
      onSubmitted: (String value) {
        controller.searchMusics(value);
      },
    );
  }

  Widget _paddingWrapper({required Widget child}) {
    return Padding(
      padding: UnifiedPadding.verticalMd,
      child: child,
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
        firstPageErrorIndicatorBuilder: (_) {
          return _paddingWrapper(
            child: RetrySearchError(
              onRetry: controller.retrySearch,
            ),
          );
        },
        newPageErrorIndicatorBuilder: (_) {
          return _paddingWrapper(
            child: RetrySearchError(
              onRetry: controller.retrySearch,
            ),
          );
        },
        noItemsFoundIndicatorBuilder: (_) {
          return _paddingWrapper(
            child: IconMessage(
              iconData: Icons.error_outline_rounded,
              message: 'error.noItemsFound'.tr(),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  return _paddingWrapper(
                    child: const WelcomeMessage(),
                  );
                }
                return _paginatedMusicList();
              },
            ),
          ),
        ),
      ],
    );
  }
}

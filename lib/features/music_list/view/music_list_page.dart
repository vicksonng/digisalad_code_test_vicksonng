import 'package:digisalad_code_test_vicksonng/features/music_list/controller/music_list_page_controller.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/view/widgets/favorite_music_view/favorite_music_view.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/view/widgets/search_music_view/search_music_view.dart';
import 'package:digisalad_code_test_vicksonng/styles/unified_gap.dart';
import 'package:digisalad_code_test_vicksonng/styles/unified_size.dart';
import 'package:digisalad_code_test_vicksonng/widgets/language_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MusicListPage extends GetView<MusicListPageController> {
  const MusicListPage({super.key});

  AppBar _appBar() {
    return AppBar(
      title: Text(
        'appName'.tr(),
        overflow: TextOverflow.ellipsis,
      ),
      titleSpacing: mdSize,
      centerTitle: false,
      bottom: TabBar(
        tabs: controller.tabs,
      ),
      actions: [
        const LanguageButton(),
        UnifiedGap.md,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.tabs.length,
      child: Scaffold(
        appBar: _appBar(),
        body: TabBarView(
          children: [
            SearchMusicView(
              controller: controller,
            ),
            FavoriteMusicView(
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}

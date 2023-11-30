import 'package:digisalad_code_test_vicksonng/config/constants.dart';
import 'package:digisalad_code_test_vicksonng/extensions/string_extension.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music/music.dart';
import 'package:digisalad_code_test_vicksonng/respositories/itunes_repository.dart';
import 'package:digisalad_code_test_vicksonng/routes/route_handler.dart';
import 'package:digisalad_code_test_vicksonng/services/hive_service.dart';
import 'package:digisalad_code_test_vicksonng/utils/common_utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MusicListPageController extends GetxController {
  MusicListPageController();

  final List<Tab> tabs = <Tab>[
    const Tab(
      icon: Icon(Icons.music_note_rounded),
    ),
    const Tab(
      icon: Icon(Icons.favorite_rounded),
    ),
  ];

  final PagingController<int, Music> pagingController =
      PagingController<int, Music>(firstPageKey: 0);

  final RxString _keyword = ''.obs;
  final RxList<Music> _favoriteSongs = <Music>[].obs;

  @override
  void onReady() async {
    super.onReady();
    favoriteSongs = await GetIt.I.get<HiveService>().getAllMusics();
    GetIt.I<HiveService>().musicListenable.addListener(() async {
      favoriteSongs = await GetIt.I.get<HiveService>().getAllMusics();
    });
  }

  @override
  void onClose() {
    pagingController.dispose();
    super.onClose();
  }

  List<Music> get favoriteSongs => _favoriteSongs;
  set favoriteSongs(List<Music> value) => _favoriteSongs.value = value;

  String get keyword => _keyword.value;

  set keyword(String value) => _keyword.value = value;

  void searchMusics(String newKeyword) {
    if (newKeyword.isEmpty) {
      showErrorDialog('error.cannotBeEmpty'.tr());
      return;
    }
    keyword = newKeyword;
    pagingController.refresh();
    pagingController.addPageRequestListener((int nextPageKey) {
      searchMusicNewPage(keyword, nextPageKey);
    });
  }

  Future<void> searchMusicNewPage(String keyword, int nextPageKey) async {
    try {
      final List<Music> _newMusics =
          await GetIt.I.get<ItunesRepository>().searchMusic(
                term: keyword.parseItuneSearchTerm,
                offset: nextPageKey * searchLimit,
              );
      if (_newMusics.length < searchLimit) {
        pagingController.appendLastPage(_newMusics);
      } else {
        // FIXME: This is a workaround to prevent duplicate items from being added to the list. (Vickson NG - 2023-11-28)
        final List<Music> _distinctMusics = _newMusics
            .where((Music music) =>
                !(pagingController.itemList ?? []).contains(music))
            .toList();
        pagingController.appendPage(_distinctMusics, nextPageKey + 1);
      }
    } catch (e) {
      pagingController.error = e;
    }
  }

  void retrySearch() {
    pagingController.retryLastFailedRequest();
  }

  void navigateToMusicDetail(Music music) {
    navigateToMusicDetailPage(music);
  }

  Future<void> clearFavoriteSongs() async {
    await GetIt.I.get<HiveService>().deleteAllMusics();
  }
}

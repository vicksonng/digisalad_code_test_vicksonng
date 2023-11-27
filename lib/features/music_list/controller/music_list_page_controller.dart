import 'package:digisalad_code_test_vicksonng/config/constants.dart';
import 'package:digisalad_code_test_vicksonng/config/messages.dart';
import 'package:digisalad_code_test_vicksonng/extensions/string_extension.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music.dart';
import 'package:digisalad_code_test_vicksonng/respositories/itunes_repository.dart';
import 'package:digisalad_code_test_vicksonng/utils/common_utils.dart';
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MusicListPageController extends GetxController {
  MusicListPageController();

  final PagingController<int, Music> pagingController =
      PagingController<int, Music>(firstPageKey: 0);

  final RxString _keyword = ''.obs;
  String get keyword => _keyword.value;
  set keyword(String value) => _keyword.value = value;

  @override
  void onClose() {
    pagingController.dispose();
    super.onClose();
  }

  void searchMusics(String newKeyword) {
    if (newKeyword.isEmpty) {
      showErrorDialog(Messages.errorCannotBeEmpty);
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
}

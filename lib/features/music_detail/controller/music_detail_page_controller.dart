import 'package:digisalad_code_test_vicksonng/features/audio_player/controller/audio_player_controller.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music/music.dart';
import 'package:digisalad_code_test_vicksonng/services/hive_service.dart';
import 'package:digisalad_code_test_vicksonng/utils/common_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

class MusicDetailPageController extends GetxController {
  final Music music = Get.arguments;
  final ValueListenable isFavoriteListenable =
      GetIt.I.get<HiveService>().musicListenable;
  final RxBool _isFavorite = false.obs;

  bool get isFavorite => _isFavorite.value;
  set isFavorite(bool value) => _isFavorite.value = value;

  @override
  void onReady() {
    super.onReady();
    GetIt.I<AudioPlayerController>().play(music);
    isFavorite = GetIt.I.get<HiveService>().isSavedMusic(music);
    isFavoriteListenable.addListener(() {
      isFavorite = GetIt.I.get<HiveService>().isSavedMusic(music);
    });
  }

  Future<void> clickFavorite() async {
    final HiveService hiveService = GetIt.I.get<HiveService>();

    try {
      if (hiveService.isSavedMusic(music)) {
        await hiveService.removeMusic(music.id);
      } else {
        await hiveService.addMusic(music);
      }
    } catch (e) {
      GetIt.I<Logger>().e(e.toString());
      showErrorDialog(e.toString());
    }
  }
}

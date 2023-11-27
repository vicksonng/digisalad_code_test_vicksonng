import 'package:digisalad_code_test_vicksonng/features/audio_player/controller/audio_player_controller.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music/music.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class MusicDetailPageController extends GetxController {
  final Music music = Get.arguments;

  @override
  void onReady() {
    super.onReady();
    GetIt.I<AudioPlayerController>().play(music);
  }
}

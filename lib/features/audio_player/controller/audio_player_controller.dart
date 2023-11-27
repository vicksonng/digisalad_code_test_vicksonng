import 'package:digisalad_code_test_vicksonng/features/music_list/models/music.dart';
import 'package:digisalad_code_test_vicksonng/utils/common_utils.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:just_audio/just_audio.dart';
import 'package:logger/logger.dart';

class AudioPlayerController extends GetxController {
  final Rxn<int> _playingTrackId = Rxn<int>();
  int? get playingTrackId => _playingTrackId.value;
  set playingTrackId(int? value) => _playingTrackId.value = value;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final AudioPlayer _player = AudioPlayer();

  @override
  void onClose() {
    _player.dispose();
    super.onClose();
  }

  void init() {
    _player.playerStateStream.listen((PlayerState state) {
      switch (state.processingState) {
        case ProcessingState.idle:
          isLoading = false;
          break;
        case ProcessingState.loading:
          isLoading = true;
          break;
        case ProcessingState.buffering:
          isLoading = true;
          break;
        case ProcessingState.ready:
          isLoading = false;
          break;
        case ProcessingState.completed:
          isLoading = false;
          playingTrackId = null;
          break;
      }
    });
  }

  void play(Music music) async {
    if (playingTrackId == music.id) {
      return;
    }

    try {
      playingTrackId = music.id;
      await _player.setUrl(music.previewUrl);
      _player.play();
    } catch (e) {
      GetIt.I<Logger>().e(e.toString());
      playingTrackId = null;
      showErrorDialog(e.toString());
    }
  }

  void pause() {
    _player.pause();
    playingTrackId = null;
  }
}

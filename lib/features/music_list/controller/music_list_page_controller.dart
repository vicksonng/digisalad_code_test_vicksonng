import 'package:digisalad_code_test_vicksonng/extensions/string_extension.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/models/music.dart';
import 'package:digisalad_code_test_vicksonng/respositories/itunes_repository.dart';
import 'package:get/state_manager.dart';

class MusicListPageController extends GetxController {
  final ItunesRespository musicRepository;
  MusicListPageController({required this.musicRepository});

  final RxList<Music> _musics = <Music>[].obs;
  List<Music> get musics => _musics;
  set musics(List<Music> value) => _musics.value = value;

  final Rx<bool> _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final Rx<String> _errorMessage = ''.obs;
  String get errorMessage => _errorMessage.value;
  set errorMessage(String value) => _errorMessage.value = value;

  Future<void> searchMusics(String keyword) async {
    try {
      isLoading = true;
      errorMessage = '';
      musics = await musicRepository.searchMusic(
        term: keyword.parseItuneSearchTerm,
      );
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
    }
  }
}

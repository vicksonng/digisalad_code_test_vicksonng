import 'package:digisalad_code_test_vicksonng/respositories/itunes_repository.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/controller/music_list_page_controller.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class MusicListPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MusicListPageController>(
      () => MusicListPageController(
        musicRepository: GetIt.I<ItunesRespository>(),
      ),
    );
  }
}

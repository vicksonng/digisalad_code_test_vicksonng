import 'package:digisalad_code_test_vicksonng/features/music_list/controller/music_list_page_controller.dart';
import 'package:get/get.dart';

class MusicListPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MusicListPageController>(MusicListPageController.new);
  }
}

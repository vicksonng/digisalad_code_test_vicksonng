import 'package:digisalad_code_test_vicksonng/features/music_detail/controller/music_detail_page_controller.dart';
import 'package:get/get.dart';

class MusicDetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MusicDetailPageController>(
      MusicDetailPageController(),
    );
  }
}

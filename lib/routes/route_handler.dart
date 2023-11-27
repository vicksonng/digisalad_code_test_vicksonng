import 'package:digisalad_code_test_vicksonng/features/music_list/models/music/music.dart';
import 'package:digisalad_code_test_vicksonng/routes/app_routes.dart';
import 'package:get/get.dart';

void navigateToMusicDetailPage(Music music) {
  Get.toNamed(
    AppRoutes.musicDetail,
    arguments: music,
  );
}

void navigateBack() {
  if (Get.currentRoute != AppRoutes.root || Get.isDialogOpen == true) {
    Get.back();
  }
}

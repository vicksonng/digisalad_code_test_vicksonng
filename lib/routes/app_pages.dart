import 'package:digisalad_code_test_vicksonng/features/music_detail/binding/music_detail_page_binding.dart';
import 'package:digisalad_code_test_vicksonng/features/music_detail/view/music_detail_page.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/binding/music_list_page_binding.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/view/music_list_page.dart';
import 'package:digisalad_code_test_vicksonng/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static final List<GetPage> getPages = <GetPage>[
    GetPage(
      name: AppRoutes.root,
      page: MusicListPage.new,
      binding: MusicListPageBinding(),
      children: [
        GetPage(
          name: AppRoutes.musicDetail,
          page: MusicDetailPage.new,
          binding: MusicDetailPageBinding(),
          fullscreenDialog: true,
        ),
      ],
    ),
  ];
}

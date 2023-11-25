import 'package:digisalad_code_test_vicksonng/features/music_list/view/music_list_page.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/binding/music_list_page_binding.dart';
import 'package:get/get.dart';

class Routes {
  static const String root = '/';

  static final List<GetPage> getPages = <GetPage>[
    GetPage(
      name: root,
      page: MusicListPage.new,
      binding: MusicListPageBinding(),
    ),
  ];
}

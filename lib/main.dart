import 'package:digisalad_code_test_vicksonng/injections.dart';
import 'package:digisalad_code_test_vicksonng/routes/routes.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/view/music_list_page.dart';
import 'package:digisalad_code_test_vicksonng/features/music_list/binding/music_list_page_binding.dart';
import 'package:digisalad_code_test_vicksonng/style/unified_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return _getApp();
  }
}

Widget _getApp() {
  return GetMaterialApp(
    getPages: Routes.getPages,
    initialBinding: MusicListPageBinding(),
    theme: ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(
          UnifiedColor.themeColor,
        ),
      ),
    ),
    home: const MusicListPage(),
  );
}

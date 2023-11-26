import 'package:digisalad_code_test_vicksonng/injections.dart';
import 'package:digisalad_code_test_vicksonng/routes/app_pages.dart';
import 'package:digisalad_code_test_vicksonng/routes/app_routes.dart';
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

  @override
  Widget build(BuildContext context) {
  return GetMaterialApp(
      getPages: AppPages.getPages,
    theme: ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(
          UnifiedColor.themeColor,
        ),
      ),
    ),
      initialRoute: AppRoutes.root,
  );
  }
}

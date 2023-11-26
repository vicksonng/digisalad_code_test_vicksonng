import 'package:digisalad_code_test_vicksonng/features/audio_player/controller/audio_player_controller.dart';
import 'package:digisalad_code_test_vicksonng/injections.dart';
import 'package:digisalad_code_test_vicksonng/routes/app_pages.dart';
import 'package:digisalad_code_test_vicksonng/routes/app_routes.dart';
import 'package:digisalad_code_test_vicksonng/style/unified_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpDI();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive ||
        state == AppLifecycleState.detached) {
      GetIt.I.get<AudioPlayerController>().pause();
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

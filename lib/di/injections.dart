import 'package:digisalad_code_test_vicksonng/features/audio_player/controller/audio_player_controller.dart';
import 'package:digisalad_code_test_vicksonng/networks/http_client.dart';
import 'package:digisalad_code_test_vicksonng/respositories/itunes_repository.dart';
import 'package:digisalad_code_test_vicksonng/services/hive_service.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

Future<void> setUpDI() async {
  GetIt.I.registerLazySingleton<Logger>(Logger.new);
  GetIt.I.registerLazySingleton<ItunesHttpClient>(
    () => ItunesHttpClient()..init(),
  );
  GetIt.I.registerLazySingleton<ItunesRepository>(ItunesRepository.new);
  GetIt.I.registerLazySingleton<AudioPlayerController>(
    () => AudioPlayerController()..init(),
  );
  GetIt.I.registerSingletonAsync<HiveService>(() async {
    final HiveService _hiveService = HiveService();
    await _hiveService.init();
    return _hiveService;
  });
  await GetIt.I.allReady();
}

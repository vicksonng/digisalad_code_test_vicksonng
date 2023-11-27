import 'package:digisalad_code_test_vicksonng/features/audio_player/controller/audio_player_controller.dart';
import 'package:digisalad_code_test_vicksonng/networks/http_client.dart';
import 'package:digisalad_code_test_vicksonng/respositories/itunes_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

void setUpDI() {
  GetIt.I.registerLazySingleton<Logger>(Logger.new);
  GetIt.I.registerLazySingleton<ItunesHttpClient>(
    () => ItunesHttpClient()..init(),
  );
  GetIt.I.registerLazySingleton<ItunesRepository>(ItunesRepository.new);
  GetIt.I.registerLazySingleton<AudioPlayerController>(
    () => AudioPlayerController()..init(),
  );
}

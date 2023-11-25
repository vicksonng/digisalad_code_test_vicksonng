import 'package:digisalad_code_test_vicksonng/networks/http_client.dart';
import 'package:digisalad_code_test_vicksonng/respositories/itunes_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

void setUpDI() {
  GetIt.I.registerLazySingleton<Logger>(Logger.new);
  GetIt.I.registerLazySingleton<ItunesHttpClient>(
    () => ItunesHttpClient()..init(),
  );
  GetIt.I.registerLazySingleton<ItunesRespository>(ItunesRespository.new);
}

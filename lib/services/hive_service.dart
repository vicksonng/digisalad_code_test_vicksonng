import 'package:digisalad_code_test_vicksonng/features/music_list/models/music/music.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  static const String _musicBoxName = 'musics';

  Future<HiveService> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(MusicImplAdapter());
    await Hive.openBox<Music>(_musicBoxName);
    return this;
  }

  ValueListenable get musicListenable =>
      _getBox<Music>(_musicBoxName).listenable();

  Box<Music> get _musicBox => _getBox<Music>(_musicBoxName);

  Future<void> addMusic(Music music) async {
    await _putItem<Music, int>(_musicBoxName, music.id, music);
  }

  bool isSavedMusic(Music music) {
    return _musicBox.values.contains(music);
  }

  Future<void> removeMusic(int key) async {
    await _musicBox.delete(key);
  }

  Future<List<Music>> getAllMusics() async {
    return _getAll<Music>(_musicBoxName);
  }

  Future<void> deleteAllMusics() async {
    await _deleteAll<Music>(_musicBoxName);
  }

  // Private methods
  Box<T> _getBox<T>(String boxName) {
    return Hive.box<T>(boxName);
  }

  Future<void> _putItem<T, K>(String boxName, K id, T item) async {
    await _getBox<T>(boxName).put(id, item);
  }

  List<T> _getAll<T>(String boxName) {
    final Box<T> box = _getBox<T>(boxName);
    return box.values.toList();
  }

  Future<void> _deleteAll<T>(String boxName) async {
    await _getBox<T>(boxName).clear();
  }
}

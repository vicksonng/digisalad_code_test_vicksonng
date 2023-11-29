// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MusicImplAdapter extends TypeAdapter<_$MusicImpl> {
  @override
  final int typeId = 0;

  @override
  _$MusicImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MusicImpl(
      id: fields[0] as int,
      artistName: fields[1] as String,
      collectionName: fields[2] as String,
      trackName: fields[3] as String,
      previewUrl: fields[4] as String,
      artworkUrl100: fields[5] as String?,
      artworkUrl30: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$MusicImpl obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.artistName)
      ..writeByte(2)
      ..write(obj.collectionName)
      ..writeByte(3)
      ..write(obj.trackName)
      ..writeByte(4)
      ..write(obj.previewUrl)
      ..writeByte(5)
      ..write(obj.artworkUrl100)
      ..writeByte(6)
      ..write(obj.artworkUrl30);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MusicImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MusicDTOImpl _$$MusicDTOImplFromJson(Map<String, dynamic> json) =>
    _$MusicDTOImpl(
      trackId: json['trackId'] as int,
      previewUrl: json['previewUrl'] as String,
      artistName: json['artistName'] as String,
      collectionName: json['collectionName'] as String?,
      trackName: json['trackName'] as String?,
      artworkUrl100: json['artworkUrl100'] as String?,
      artworkUrl30: json['artworkUrl30'] as String?,
    );

Map<String, dynamic> _$$MusicDTOImplToJson(_$MusicDTOImpl instance) =>
    <String, dynamic>{
      'trackId': instance.trackId,
      'previewUrl': instance.previewUrl,
      'artistName': instance.artistName,
      'collectionName': instance.collectionName,
      'trackName': instance.trackName,
      'artworkUrl100': instance.artworkUrl100,
      'artworkUrl30': instance.artworkUrl30,
    };

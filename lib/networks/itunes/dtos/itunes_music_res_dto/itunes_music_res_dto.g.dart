// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itunes_music_res_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItunesMusicResDtoImpl _$$ItunesMusicResDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ItunesMusicResDtoImpl(
      resultCount: json['resultCount'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MusicDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ItunesMusicResDtoImplToJson(
        _$ItunesMusicResDtoImpl instance) =>
    <String, dynamic>{
      'resultCount': instance.resultCount,
      'results': instance.results,
    };

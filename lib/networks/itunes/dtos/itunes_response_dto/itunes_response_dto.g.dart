// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itunes_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItunesResponseDtoImpl _$$ItunesResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ItunesResponseDtoImpl(
      resultCount: json['resultCount'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MusicDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ItunesResponseDtoImplToJson(
        _$ItunesResponseDtoImpl instance) =>
    <String, dynamic>{
      'resultCount': instance.resultCount,
      'results': instance.results,
    };

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'music_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MusicDTO _$MusicDTOFromJson(Map<String, dynamic> json) {
  return _MusicDTO.fromJson(json);
}

/// @nodoc
mixin _$MusicDTO {
  int get trackId => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;
  String get collectionName => throw _privateConstructorUsedError;
  String get trackName => throw _privateConstructorUsedError;
  String get previewUrl => throw _privateConstructorUsedError;
  String? get artworkUrl100 => throw _privateConstructorUsedError;
  String? get artworkUrl30 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MusicDTOCopyWith<MusicDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicDTOCopyWith<$Res> {
  factory $MusicDTOCopyWith(MusicDTO value, $Res Function(MusicDTO) then) =
      _$MusicDTOCopyWithImpl<$Res, MusicDTO>;
  @useResult
  $Res call(
      {int trackId,
      String artistName,
      String collectionName,
      String trackName,
      String previewUrl,
      String? artworkUrl100,
      String? artworkUrl30});
}

/// @nodoc
class _$MusicDTOCopyWithImpl<$Res, $Val extends MusicDTO>
    implements $MusicDTOCopyWith<$Res> {
  _$MusicDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackId = null,
    Object? artistName = null,
    Object? collectionName = null,
    Object? trackName = null,
    Object? previewUrl = null,
    Object? artworkUrl100 = freezed,
    Object? artworkUrl30 = freezed,
  }) {
    return _then(_value.copyWith(
      trackId: null == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as int,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      trackName: null == trackName
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      artworkUrl100: freezed == artworkUrl100
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as String?,
      artworkUrl30: freezed == artworkUrl30
          ? _value.artworkUrl30
          : artworkUrl30 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MusicDTOImplCopyWith<$Res>
    implements $MusicDTOCopyWith<$Res> {
  factory _$$MusicDTOImplCopyWith(
          _$MusicDTOImpl value, $Res Function(_$MusicDTOImpl) then) =
      __$$MusicDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int trackId,
      String artistName,
      String collectionName,
      String trackName,
      String previewUrl,
      String? artworkUrl100,
      String? artworkUrl30});
}

/// @nodoc
class __$$MusicDTOImplCopyWithImpl<$Res>
    extends _$MusicDTOCopyWithImpl<$Res, _$MusicDTOImpl>
    implements _$$MusicDTOImplCopyWith<$Res> {
  __$$MusicDTOImplCopyWithImpl(
      _$MusicDTOImpl _value, $Res Function(_$MusicDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackId = null,
    Object? artistName = null,
    Object? collectionName = null,
    Object? trackName = null,
    Object? previewUrl = null,
    Object? artworkUrl100 = freezed,
    Object? artworkUrl30 = freezed,
  }) {
    return _then(_$MusicDTOImpl(
      trackId: null == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as int,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      trackName: null == trackName
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      artworkUrl100: freezed == artworkUrl100
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as String?,
      artworkUrl30: freezed == artworkUrl30
          ? _value.artworkUrl30
          : artworkUrl30 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MusicDTOImpl implements _MusicDTO {
  const _$MusicDTOImpl(
      {required this.trackId,
      required this.artistName,
      required this.collectionName,
      required this.trackName,
      required this.previewUrl,
      this.artworkUrl100,
      this.artworkUrl30});

  factory _$MusicDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MusicDTOImplFromJson(json);

  @override
  final int trackId;
  @override
  final String artistName;
  @override
  final String collectionName;
  @override
  final String trackName;
  @override
  final String previewUrl;
  @override
  final String? artworkUrl100;
  @override
  final String? artworkUrl30;

  @override
  String toString() {
    return 'MusicDTO(trackId: $trackId, artistName: $artistName, collectionName: $collectionName, trackName: $trackName, previewUrl: $previewUrl, artworkUrl100: $artworkUrl100, artworkUrl30: $artworkUrl30)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicDTOImpl &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.trackName, trackName) ||
                other.trackName == trackName) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.artworkUrl100, artworkUrl100) ||
                other.artworkUrl100 == artworkUrl100) &&
            (identical(other.artworkUrl30, artworkUrl30) ||
                other.artworkUrl30 == artworkUrl30));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, trackId, artistName,
      collectionName, trackName, previewUrl, artworkUrl100, artworkUrl30);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MusicDTOImplCopyWith<_$MusicDTOImpl> get copyWith =>
      __$$MusicDTOImplCopyWithImpl<_$MusicDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MusicDTOImplToJson(
      this,
    );
  }
}

abstract class _MusicDTO implements MusicDTO {
  const factory _MusicDTO(
      {required final int trackId,
      required final String artistName,
      required final String collectionName,
      required final String trackName,
      required final String previewUrl,
      final String? artworkUrl100,
      final String? artworkUrl30}) = _$MusicDTOImpl;

  factory _MusicDTO.fromJson(Map<String, dynamic> json) =
      _$MusicDTOImpl.fromJson;

  @override
  int get trackId;
  @override
  String get artistName;
  @override
  String get collectionName;
  @override
  String get trackName;
  @override
  String get previewUrl;
  @override
  String? get artworkUrl100;
  @override
  String? get artworkUrl30;
  @override
  @JsonKey(ignore: true)
  _$$MusicDTOImplCopyWith<_$MusicDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

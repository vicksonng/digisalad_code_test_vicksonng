// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'music.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Music {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get artistName => throw _privateConstructorUsedError;
  @HiveField(2)
  String get collectionName => throw _privateConstructorUsedError;
  @HiveField(3)
  String get trackName => throw _privateConstructorUsedError;
  @HiveField(4)
  String get previewUrl => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get artworkUrl100 => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get artworkUrl30 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MusicCopyWith<Music> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicCopyWith<$Res> {
  factory $MusicCopyWith(Music value, $Res Function(Music) then) =
      _$MusicCopyWithImpl<$Res, Music>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String artistName,
      @HiveField(2) String collectionName,
      @HiveField(3) String trackName,
      @HiveField(4) String previewUrl,
      @HiveField(5) String? artworkUrl100,
      @HiveField(6) String? artworkUrl30});
}

/// @nodoc
class _$MusicCopyWithImpl<$Res, $Val extends Music>
    implements $MusicCopyWith<$Res> {
  _$MusicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistName = null,
    Object? collectionName = null,
    Object? trackName = null,
    Object? previewUrl = null,
    Object? artworkUrl100 = freezed,
    Object? artworkUrl30 = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
abstract class _$$MusicImplCopyWith<$Res> implements $MusicCopyWith<$Res> {
  factory _$$MusicImplCopyWith(
          _$MusicImpl value, $Res Function(_$MusicImpl) then) =
      __$$MusicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String artistName,
      @HiveField(2) String collectionName,
      @HiveField(3) String trackName,
      @HiveField(4) String previewUrl,
      @HiveField(5) String? artworkUrl100,
      @HiveField(6) String? artworkUrl30});
}

/// @nodoc
class __$$MusicImplCopyWithImpl<$Res>
    extends _$MusicCopyWithImpl<$Res, _$MusicImpl>
    implements _$$MusicImplCopyWith<$Res> {
  __$$MusicImplCopyWithImpl(
      _$MusicImpl _value, $Res Function(_$MusicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistName = null,
    Object? collectionName = null,
    Object? trackName = null,
    Object? previewUrl = null,
    Object? artworkUrl100 = freezed,
    Object? artworkUrl30 = freezed,
  }) {
    return _then(_$MusicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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

@HiveType(typeId: 0)
class _$MusicImpl extends _Music {
  _$MusicImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.artistName,
      @HiveField(2) required this.collectionName,
      @HiveField(3) required this.trackName,
      @HiveField(4) required this.previewUrl,
      @HiveField(5) this.artworkUrl100,
      @HiveField(6) this.artworkUrl30})
      : super._();

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String artistName;
  @override
  @HiveField(2)
  final String collectionName;
  @override
  @HiveField(3)
  final String trackName;
  @override
  @HiveField(4)
  final String previewUrl;
  @override
  @HiveField(5)
  final String? artworkUrl100;
  @override
  @HiveField(6)
  final String? artworkUrl30;

  @override
  String toString() {
    return 'Music(id: $id, artistName: $artistName, collectionName: $collectionName, trackName: $trackName, previewUrl: $previewUrl, artworkUrl100: $artworkUrl100, artworkUrl30: $artworkUrl30)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicImpl &&
            (identical(other.id, id) || other.id == id) &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, artistName, collectionName,
      trackName, previewUrl, artworkUrl100, artworkUrl30);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MusicImplCopyWith<_$MusicImpl> get copyWith =>
      __$$MusicImplCopyWithImpl<_$MusicImpl>(this, _$identity);
}

abstract class _Music extends Music {
  factory _Music(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String artistName,
      @HiveField(2) required final String collectionName,
      @HiveField(3) required final String trackName,
      @HiveField(4) required final String previewUrl,
      @HiveField(5) final String? artworkUrl100,
      @HiveField(6) final String? artworkUrl30}) = _$MusicImpl;
  _Music._() : super._();

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get artistName;
  @override
  @HiveField(2)
  String get collectionName;
  @override
  @HiveField(3)
  String get trackName;
  @override
  @HiveField(4)
  String get previewUrl;
  @override
  @HiveField(5)
  String? get artworkUrl100;
  @override
  @HiveField(6)
  String? get artworkUrl30;
  @override
  @JsonKey(ignore: true)
  _$$MusicImplCopyWith<_$MusicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

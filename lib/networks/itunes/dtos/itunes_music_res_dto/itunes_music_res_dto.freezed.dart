// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'itunes_music_res_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItunesMusicResDto _$ItunesMusicResDtoFromJson(Map<String, dynamic> json) {
  return _ItunesMusicResDto.fromJson(json);
}

/// @nodoc
mixin _$ItunesMusicResDto {
  int get resultCount => throw _privateConstructorUsedError;
  List<MusicDTO> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItunesMusicResDtoCopyWith<ItunesMusicResDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItunesMusicResDtoCopyWith<$Res> {
  factory $ItunesMusicResDtoCopyWith(
          ItunesMusicResDto value, $Res Function(ItunesMusicResDto) then) =
      _$ItunesMusicResDtoCopyWithImpl<$Res, ItunesMusicResDto>;
  @useResult
  $Res call({int resultCount, List<MusicDTO> results});
}

/// @nodoc
class _$ItunesMusicResDtoCopyWithImpl<$Res, $Val extends ItunesMusicResDto>
    implements $ItunesMusicResDtoCopyWith<$Res> {
  _$ItunesMusicResDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCount = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      resultCount: null == resultCount
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MusicDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItunesMusicResDtoImplCopyWith<$Res>
    implements $ItunesMusicResDtoCopyWith<$Res> {
  factory _$$ItunesMusicResDtoImplCopyWith(_$ItunesMusicResDtoImpl value,
          $Res Function(_$ItunesMusicResDtoImpl) then) =
      __$$ItunesMusicResDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int resultCount, List<MusicDTO> results});
}

/// @nodoc
class __$$ItunesMusicResDtoImplCopyWithImpl<$Res>
    extends _$ItunesMusicResDtoCopyWithImpl<$Res, _$ItunesMusicResDtoImpl>
    implements _$$ItunesMusicResDtoImplCopyWith<$Res> {
  __$$ItunesMusicResDtoImplCopyWithImpl(_$ItunesMusicResDtoImpl _value,
      $Res Function(_$ItunesMusicResDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCount = null,
    Object? results = null,
  }) {
    return _then(_$ItunesMusicResDtoImpl(
      resultCount: null == resultCount
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MusicDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItunesMusicResDtoImpl implements _ItunesMusicResDto {
  const _$ItunesMusicResDtoImpl(
      {required this.resultCount, required final List<MusicDTO> results})
      : _results = results;

  factory _$ItunesMusicResDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItunesMusicResDtoImplFromJson(json);

  @override
  final int resultCount;
  final List<MusicDTO> _results;
  @override
  List<MusicDTO> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ItunesMusicResDto(resultCount: $resultCount, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItunesMusicResDtoImpl &&
            (identical(other.resultCount, resultCount) ||
                other.resultCount == resultCount) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, resultCount, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItunesMusicResDtoImplCopyWith<_$ItunesMusicResDtoImpl> get copyWith =>
      __$$ItunesMusicResDtoImplCopyWithImpl<_$ItunesMusicResDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItunesMusicResDtoImplToJson(
      this,
    );
  }
}

abstract class _ItunesMusicResDto implements ItunesMusicResDto {
  const factory _ItunesMusicResDto(
      {required final int resultCount,
      required final List<MusicDTO> results}) = _$ItunesMusicResDtoImpl;

  factory _ItunesMusicResDto.fromJson(Map<String, dynamic> json) =
      _$ItunesMusicResDtoImpl.fromJson;

  @override
  int get resultCount;
  @override
  List<MusicDTO> get results;
  @override
  @JsonKey(ignore: true)
  _$$ItunesMusicResDtoImplCopyWith<_$ItunesMusicResDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

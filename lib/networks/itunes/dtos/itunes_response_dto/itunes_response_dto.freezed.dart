// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'itunes_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItunesResponseDto _$ItunesResponseDtoFromJson(Map<String, dynamic> json) {
  return _ItunesResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ItunesResponseDto {
  int get resultCount => throw _privateConstructorUsedError;
  List<MusicDTO> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItunesResponseDtoCopyWith<ItunesResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItunesResponseDtoCopyWith<$Res> {
  factory $ItunesResponseDtoCopyWith(
          ItunesResponseDto value, $Res Function(ItunesResponseDto) then) =
      _$ItunesResponseDtoCopyWithImpl<$Res, ItunesResponseDto>;
  @useResult
  $Res call({int resultCount, List<MusicDTO> results});
}

/// @nodoc
class _$ItunesResponseDtoCopyWithImpl<$Res, $Val extends ItunesResponseDto>
    implements $ItunesResponseDtoCopyWith<$Res> {
  _$ItunesResponseDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$ItunesResponseDtoImplCopyWith<$Res>
    implements $ItunesResponseDtoCopyWith<$Res> {
  factory _$$ItunesResponseDtoImplCopyWith(_$ItunesResponseDtoImpl value,
          $Res Function(_$ItunesResponseDtoImpl) then) =
      __$$ItunesResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int resultCount, List<MusicDTO> results});
}

/// @nodoc
class __$$ItunesResponseDtoImplCopyWithImpl<$Res>
    extends _$ItunesResponseDtoCopyWithImpl<$Res, _$ItunesResponseDtoImpl>
    implements _$$ItunesResponseDtoImplCopyWith<$Res> {
  __$$ItunesResponseDtoImplCopyWithImpl(_$ItunesResponseDtoImpl _value,
      $Res Function(_$ItunesResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCount = null,
    Object? results = null,
  }) {
    return _then(_$ItunesResponseDtoImpl(
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
class _$ItunesResponseDtoImpl implements _ItunesResponseDto {
  const _$ItunesResponseDtoImpl(
      {required this.resultCount, required final List<MusicDTO> results})
      : _results = results;

  factory _$ItunesResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItunesResponseDtoImplFromJson(json);

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
    return 'ItunesResponseDto(resultCount: $resultCount, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItunesResponseDtoImpl &&
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
  _$$ItunesResponseDtoImplCopyWith<_$ItunesResponseDtoImpl> get copyWith =>
      __$$ItunesResponseDtoImplCopyWithImpl<_$ItunesResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItunesResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ItunesResponseDto implements ItunesResponseDto {
  const factory _ItunesResponseDto(
      {required final int resultCount,
      required final List<MusicDTO> results}) = _$ItunesResponseDtoImpl;

  factory _ItunesResponseDto.fromJson(Map<String, dynamic> json) =
      _$ItunesResponseDtoImpl.fromJson;

  @override
  int get resultCount;
  @override
  List<MusicDTO> get results;
  @override
  @JsonKey(ignore: true)
  _$$ItunesResponseDtoImplCopyWith<_$ItunesResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

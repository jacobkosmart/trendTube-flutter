// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return _Statistics.fromJson(json);
}

/// @nodoc
class _$StatisticsTearOff {
  const _$StatisticsTearOff();

  _Statistics call(
      {String? viewCount,
      String? likeCount,
      String? dislikeCount,
      String? favoriteCount,
      String? commentCount,
      String? subscriberCount}) {
    return _Statistics(
      viewCount: viewCount,
      likeCount: likeCount,
      dislikeCount: dislikeCount,
      favoriteCount: favoriteCount,
      commentCount: commentCount,
      subscriberCount: subscriberCount,
    );
  }

  Statistics fromJson(Map<String, Object?> json) {
    return Statistics.fromJson(json);
  }
}

/// @nodoc
const $Statistics = _$StatisticsTearOff();

/// @nodoc
mixin _$Statistics {
  String? get viewCount => throw _privateConstructorUsedError;
  String? get likeCount => throw _privateConstructorUsedError;
  String? get dislikeCount => throw _privateConstructorUsedError;
  String? get favoriteCount => throw _privateConstructorUsedError;
  String? get commentCount => throw _privateConstructorUsedError;
  String? get subscriberCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsCopyWith<Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res>;
  $Res call(
      {String? viewCount,
      String? likeCount,
      String? dislikeCount,
      String? favoriteCount,
      String? commentCount,
      String? subscriberCount});
}

/// @nodoc
class _$StatisticsCopyWithImpl<$Res> implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  final Statistics _value;
  // ignore: unused_field
  final $Res Function(Statistics) _then;

  @override
  $Res call({
    Object? viewCount = freezed,
    Object? likeCount = freezed,
    Object? dislikeCount = freezed,
    Object? favoriteCount = freezed,
    Object? commentCount = freezed,
    Object? subscriberCount = freezed,
  }) {
    return _then(_value.copyWith(
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as String?,
      dislikeCount: dislikeCount == freezed
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriberCount: subscriberCount == freezed
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StatisticsCopyWith<$Res> implements $StatisticsCopyWith<$Res> {
  factory _$StatisticsCopyWith(
          _Statistics value, $Res Function(_Statistics) then) =
      __$StatisticsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? viewCount,
      String? likeCount,
      String? dislikeCount,
      String? favoriteCount,
      String? commentCount,
      String? subscriberCount});
}

/// @nodoc
class __$StatisticsCopyWithImpl<$Res> extends _$StatisticsCopyWithImpl<$Res>
    implements _$StatisticsCopyWith<$Res> {
  __$StatisticsCopyWithImpl(
      _Statistics _value, $Res Function(_Statistics) _then)
      : super(_value, (v) => _then(v as _Statistics));

  @override
  _Statistics get _value => super._value as _Statistics;

  @override
  $Res call({
    Object? viewCount = freezed,
    Object? likeCount = freezed,
    Object? dislikeCount = freezed,
    Object? favoriteCount = freezed,
    Object? commentCount = freezed,
    Object? subscriberCount = freezed,
  }) {
    return _then(_Statistics(
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as String?,
      dislikeCount: dislikeCount == freezed
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriberCount: subscriberCount == freezed
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Statistics implements _Statistics {
  const _$_Statistics(
      {this.viewCount,
      this.likeCount,
      this.dislikeCount,
      this.favoriteCount,
      this.commentCount,
      this.subscriberCount});

  factory _$_Statistics.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticsFromJson(json);

  @override
  final String? viewCount;
  @override
  final String? likeCount;
  @override
  final String? dislikeCount;
  @override
  final String? favoriteCount;
  @override
  final String? commentCount;
  @override
  final String? subscriberCount;

  @override
  String toString() {
    return 'Statistics(viewCount: $viewCount, likeCount: $likeCount, dislikeCount: $dislikeCount, favoriteCount: $favoriteCount, commentCount: $commentCount, subscriberCount: $subscriberCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Statistics &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.dislikeCount, dislikeCount) ||
                other.dislikeCount == dislikeCount) &&
            (identical(other.favoriteCount, favoriteCount) ||
                other.favoriteCount == favoriteCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.subscriberCount, subscriberCount) ||
                other.subscriberCount == subscriberCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewCount, likeCount,
      dislikeCount, favoriteCount, commentCount, subscriberCount);

  @JsonKey(ignore: true)
  @override
  _$StatisticsCopyWith<_Statistics> get copyWith =>
      __$StatisticsCopyWithImpl<_Statistics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatisticsToJson(this);
  }
}

abstract class _Statistics implements Statistics {
  const factory _Statistics(
      {String? viewCount,
      String? likeCount,
      String? dislikeCount,
      String? favoriteCount,
      String? commentCount,
      String? subscriberCount}) = _$_Statistics;

  factory _Statistics.fromJson(Map<String, dynamic> json) =
      _$_Statistics.fromJson;

  @override
  String? get viewCount;
  @override
  String? get likeCount;
  @override
  String? get dislikeCount;
  @override
  String? get favoriteCount;
  @override
  String? get commentCount;
  @override
  String? get subscriberCount;
  @override
  @JsonKey(ignore: true)
  _$StatisticsCopyWith<_Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'youtuber.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Youtuber _$YoutuberFromJson(Map<String, dynamic> json) {
  return _Youtuber.fromJson(json);
}

/// @nodoc
class _$YoutuberTearOff {
  const _$YoutuberTearOff();

  _Youtuber call({Snippet? snippet, Statistics? statistics}) {
    return _Youtuber(
      snippet: snippet,
      statistics: statistics,
    );
  }

  Youtuber fromJson(Map<String, Object?> json) {
    return Youtuber.fromJson(json);
  }
}

/// @nodoc
const $Youtuber = _$YoutuberTearOff();

/// @nodoc
mixin _$Youtuber {
  Snippet? get snippet => throw _privateConstructorUsedError;
  Statistics? get statistics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutuberCopyWith<Youtuber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutuberCopyWith<$Res> {
  factory $YoutuberCopyWith(Youtuber value, $Res Function(Youtuber) then) =
      _$YoutuberCopyWithImpl<$Res>;
  $Res call({Snippet? snippet, Statistics? statistics});

  $SnippetCopyWith<$Res>? get snippet;
  $StatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class _$YoutuberCopyWithImpl<$Res> implements $YoutuberCopyWith<$Res> {
  _$YoutuberCopyWithImpl(this._value, this._then);

  final Youtuber _value;
  // ignore: unused_field
  final $Res Function(Youtuber) _then;

  @override
  $Res call({
    Object? snippet = freezed,
    Object? statistics = freezed,
  }) {
    return _then(_value.copyWith(
      snippet: snippet == freezed
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as Snippet?,
      statistics: statistics == freezed
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics?,
    ));
  }

  @override
  $SnippetCopyWith<$Res>? get snippet {
    if (_value.snippet == null) {
      return null;
    }

    return $SnippetCopyWith<$Res>(_value.snippet!, (value) {
      return _then(_value.copyWith(snippet: value));
    });
  }

  @override
  $StatisticsCopyWith<$Res>? get statistics {
    if (_value.statistics == null) {
      return null;
    }

    return $StatisticsCopyWith<$Res>(_value.statistics!, (value) {
      return _then(_value.copyWith(statistics: value));
    });
  }
}

/// @nodoc
abstract class _$YoutuberCopyWith<$Res> implements $YoutuberCopyWith<$Res> {
  factory _$YoutuberCopyWith(_Youtuber value, $Res Function(_Youtuber) then) =
      __$YoutuberCopyWithImpl<$Res>;
  @override
  $Res call({Snippet? snippet, Statistics? statistics});

  @override
  $SnippetCopyWith<$Res>? get snippet;
  @override
  $StatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class __$YoutuberCopyWithImpl<$Res> extends _$YoutuberCopyWithImpl<$Res>
    implements _$YoutuberCopyWith<$Res> {
  __$YoutuberCopyWithImpl(_Youtuber _value, $Res Function(_Youtuber) _then)
      : super(_value, (v) => _then(v as _Youtuber));

  @override
  _Youtuber get _value => super._value as _Youtuber;

  @override
  $Res call({
    Object? snippet = freezed,
    Object? statistics = freezed,
  }) {
    return _then(_Youtuber(
      snippet: snippet == freezed
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as Snippet?,
      statistics: statistics == freezed
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Youtuber implements _Youtuber {
  _$_Youtuber({this.snippet, this.statistics});

  factory _$_Youtuber.fromJson(Map<String, dynamic> json) =>
      _$$_YoutuberFromJson(json);

  @override
  final Snippet? snippet;
  @override
  final Statistics? statistics;

  @override
  String toString() {
    return 'Youtuber(snippet: $snippet, statistics: $statistics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Youtuber &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, snippet, statistics);

  @JsonKey(ignore: true)
  @override
  _$YoutuberCopyWith<_Youtuber> get copyWith =>
      __$YoutuberCopyWithImpl<_Youtuber>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutuberToJson(this);
  }
}

abstract class _Youtuber implements Youtuber {
  factory _Youtuber({Snippet? snippet, Statistics? statistics}) = _$_Youtuber;

  factory _Youtuber.fromJson(Map<String, dynamic> json) = _$_Youtuber.fromJson;

  @override
  Snippet? get snippet;
  @override
  Statistics? get statistics;
  @override
  @JsonKey(ignore: true)
  _$YoutuberCopyWith<_Youtuber> get copyWith =>
      throw _privateConstructorUsedError;
}

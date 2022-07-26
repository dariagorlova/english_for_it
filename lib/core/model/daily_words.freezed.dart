// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daily_words.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DailyWords {
  List<OneWord> get words => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyWordsCopyWith<DailyWords> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWordsCopyWith<$Res> {
  factory $DailyWordsCopyWith(
          DailyWords value, $Res Function(DailyWords) then) =
      _$DailyWordsCopyWithImpl<$Res>;
  $Res call({List<OneWord> words});
}

/// @nodoc
class _$DailyWordsCopyWithImpl<$Res> implements $DailyWordsCopyWith<$Res> {
  _$DailyWordsCopyWithImpl(this._value, this._then);

  final DailyWords _value;
  // ignore: unused_field
  final $Res Function(DailyWords) _then;

  @override
  $Res call({
    Object? words = freezed,
  }) {
    return _then(_value.copyWith(
      words: words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<OneWord>,
    ));
  }
}

/// @nodoc
abstract class _$$_DailyWordsCopyWith<$Res>
    implements $DailyWordsCopyWith<$Res> {
  factory _$$_DailyWordsCopyWith(
          _$_DailyWords value, $Res Function(_$_DailyWords) then) =
      __$$_DailyWordsCopyWithImpl<$Res>;
  @override
  $Res call({List<OneWord> words});
}

/// @nodoc
class __$$_DailyWordsCopyWithImpl<$Res> extends _$DailyWordsCopyWithImpl<$Res>
    implements _$$_DailyWordsCopyWith<$Res> {
  __$$_DailyWordsCopyWithImpl(
      _$_DailyWords _value, $Res Function(_$_DailyWords) _then)
      : super(_value, (v) => _then(v as _$_DailyWords));

  @override
  _$_DailyWords get _value => super._value as _$_DailyWords;

  @override
  $Res call({
    Object? words = freezed,
  }) {
    return _then(_$_DailyWords(
      words: words == freezed
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<OneWord>,
    ));
  }
}

/// @nodoc

class _$_DailyWords implements _DailyWords {
  const _$_DailyWords({required final List<OneWord> words}) : _words = words;

  final List<OneWord> _words;
  @override
  List<OneWord> get words {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  String toString() {
    return 'DailyWords(words: $words)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyWords &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  _$$_DailyWordsCopyWith<_$_DailyWords> get copyWith =>
      __$$_DailyWordsCopyWithImpl<_$_DailyWords>(this, _$identity);
}

abstract class _DailyWords implements DailyWords {
  const factory _DailyWords({required final List<OneWord> words}) =
      _$_DailyWords;

  @override
  List<OneWord> get words;
  @override
  @JsonKey(ignore: true)
  _$$_DailyWordsCopyWith<_$_DailyWords> get copyWith =>
      throw _privateConstructorUsedError;
}

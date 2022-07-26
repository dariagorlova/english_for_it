// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'one_word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OneWord {
  String get word => throw _privateConstructorUsedError;
  String get translate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OneWordCopyWith<OneWord> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneWordCopyWith<$Res> {
  factory $OneWordCopyWith(OneWord value, $Res Function(OneWord) then) =
      _$OneWordCopyWithImpl<$Res>;
  $Res call({String word, String translate});
}

/// @nodoc
class _$OneWordCopyWithImpl<$Res> implements $OneWordCopyWith<$Res> {
  _$OneWordCopyWithImpl(this._value, this._then);

  final OneWord _value;
  // ignore: unused_field
  final $Res Function(OneWord) _then;

  @override
  $Res call({
    Object? word = freezed,
    Object? translate = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      translate: translate == freezed
          ? _value.translate
          : translate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_OneWordCopyWith<$Res> implements $OneWordCopyWith<$Res> {
  factory _$$_OneWordCopyWith(
          _$_OneWord value, $Res Function(_$_OneWord) then) =
      __$$_OneWordCopyWithImpl<$Res>;
  @override
  $Res call({String word, String translate});
}

/// @nodoc
class __$$_OneWordCopyWithImpl<$Res> extends _$OneWordCopyWithImpl<$Res>
    implements _$$_OneWordCopyWith<$Res> {
  __$$_OneWordCopyWithImpl(_$_OneWord _value, $Res Function(_$_OneWord) _then)
      : super(_value, (v) => _then(v as _$_OneWord));

  @override
  _$_OneWord get _value => super._value as _$_OneWord;

  @override
  $Res call({
    Object? word = freezed,
    Object? translate = freezed,
  }) {
    return _then(_$_OneWord(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      translate: translate == freezed
          ? _value.translate
          : translate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OneWord implements _OneWord {
  const _$_OneWord({this.word = '', this.translate = ''});

  @override
  @JsonKey()
  final String word;
  @override
  @JsonKey()
  final String translate;

  @override
  String toString() {
    return 'OneWord(word: $word, translate: $translate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OneWord &&
            const DeepCollectionEquality().equals(other.word, word) &&
            const DeepCollectionEquality().equals(other.translate, translate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(word),
      const DeepCollectionEquality().hash(translate));

  @JsonKey(ignore: true)
  @override
  _$$_OneWordCopyWith<_$_OneWord> get copyWith =>
      __$$_OneWordCopyWithImpl<_$_OneWord>(this, _$identity);
}

abstract class _OneWord implements OneWord {
  const factory _OneWord({final String word, final String translate}) =
      _$_OneWord;

  @override
  String get word;
  @override
  String get translate;
  @override
  @JsonKey(ignore: true)
  _$$_OneWordCopyWith<_$_OneWord> get copyWith =>
      throw _privateConstructorUsedError;
}

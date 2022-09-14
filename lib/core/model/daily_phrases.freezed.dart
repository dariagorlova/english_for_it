// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daily_phrases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DailyPhrases {
  List<Phrase> get phrases => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyPhrasesCopyWith<DailyPhrases> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyPhrasesCopyWith<$Res> {
  factory $DailyPhrasesCopyWith(
          DailyPhrases value, $Res Function(DailyPhrases) then) =
      _$DailyPhrasesCopyWithImpl<$Res>;
  $Res call({List<Phrase> phrases});
}

/// @nodoc
class _$DailyPhrasesCopyWithImpl<$Res> implements $DailyPhrasesCopyWith<$Res> {
  _$DailyPhrasesCopyWithImpl(this._value, this._then);

  final DailyPhrases _value;
  // ignore: unused_field
  final $Res Function(DailyPhrases) _then;

  @override
  $Res call({
    Object? phrases = freezed,
  }) {
    return _then(_value.copyWith(
      phrases: phrases == freezed
          ? _value.phrases
          : phrases // ignore: cast_nullable_to_non_nullable
              as List<Phrase>,
    ));
  }
}

/// @nodoc
abstract class _$$_DailyPhrasesCopyWith<$Res>
    implements $DailyPhrasesCopyWith<$Res> {
  factory _$$_DailyPhrasesCopyWith(
          _$_DailyPhrases value, $Res Function(_$_DailyPhrases) then) =
      __$$_DailyPhrasesCopyWithImpl<$Res>;
  @override
  $Res call({List<Phrase> phrases});
}

/// @nodoc
class __$$_DailyPhrasesCopyWithImpl<$Res>
    extends _$DailyPhrasesCopyWithImpl<$Res>
    implements _$$_DailyPhrasesCopyWith<$Res> {
  __$$_DailyPhrasesCopyWithImpl(
      _$_DailyPhrases _value, $Res Function(_$_DailyPhrases) _then)
      : super(_value, (v) => _then(v as _$_DailyPhrases));

  @override
  _$_DailyPhrases get _value => super._value as _$_DailyPhrases;

  @override
  $Res call({
    Object? phrases = freezed,
  }) {
    return _then(_$_DailyPhrases(
      phrases: phrases == freezed
          ? _value._phrases
          : phrases // ignore: cast_nullable_to_non_nullable
              as List<Phrase>,
    ));
  }
}

/// @nodoc

class _$_DailyPhrases implements _DailyPhrases {
  const _$_DailyPhrases({required final List<Phrase> phrases})
      : _phrases = phrases;

  final List<Phrase> _phrases;
  @override
  List<Phrase> get phrases {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phrases);
  }

  @override
  String toString() {
    return 'DailyPhrases(phrases: $phrases)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyPhrases &&
            const DeepCollectionEquality().equals(other._phrases, _phrases));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_phrases));

  @JsonKey(ignore: true)
  @override
  _$$_DailyPhrasesCopyWith<_$_DailyPhrases> get copyWith =>
      __$$_DailyPhrasesCopyWithImpl<_$_DailyPhrases>(this, _$identity);
}

abstract class _DailyPhrases implements DailyPhrases {
  const factory _DailyPhrases({required final List<Phrase> phrases}) =
      _$_DailyPhrases;

  @override
  List<Phrase> get phrases;
  @override
  @JsonKey(ignore: true)
  _$$_DailyPhrasesCopyWith<_$_DailyPhrases> get copyWith =>
      throw _privateConstructorUsedError;
}

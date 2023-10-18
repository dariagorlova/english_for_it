// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$DailyPhrasesCopyWithImpl<$Res, DailyPhrases>;
  @useResult
  $Res call({List<Phrase> phrases});
}

/// @nodoc
class _$DailyPhrasesCopyWithImpl<$Res, $Val extends DailyPhrases>
    implements $DailyPhrasesCopyWith<$Res> {
  _$DailyPhrasesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrases = null,
  }) {
    return _then(_value.copyWith(
      phrases: null == phrases
          ? _value.phrases
          : phrases // ignore: cast_nullable_to_non_nullable
              as List<Phrase>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyPhrasesImplCopyWith<$Res>
    implements $DailyPhrasesCopyWith<$Res> {
  factory _$$DailyPhrasesImplCopyWith(
          _$DailyPhrasesImpl value, $Res Function(_$DailyPhrasesImpl) then) =
      __$$DailyPhrasesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Phrase> phrases});
}

/// @nodoc
class __$$DailyPhrasesImplCopyWithImpl<$Res>
    extends _$DailyPhrasesCopyWithImpl<$Res, _$DailyPhrasesImpl>
    implements _$$DailyPhrasesImplCopyWith<$Res> {
  __$$DailyPhrasesImplCopyWithImpl(
      _$DailyPhrasesImpl _value, $Res Function(_$DailyPhrasesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrases = null,
  }) {
    return _then(_$DailyPhrasesImpl(
      phrases: null == phrases
          ? _value._phrases
          : phrases // ignore: cast_nullable_to_non_nullable
              as List<Phrase>,
    ));
  }
}

/// @nodoc

class _$DailyPhrasesImpl implements _DailyPhrases {
  const _$DailyPhrasesImpl({required final List<Phrase> phrases})
      : _phrases = phrases;

  final List<Phrase> _phrases;
  @override
  List<Phrase> get phrases {
    if (_phrases is EqualUnmodifiableListView) return _phrases;
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
            other is _$DailyPhrasesImpl &&
            const DeepCollectionEquality().equals(other._phrases, _phrases));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_phrases));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyPhrasesImplCopyWith<_$DailyPhrasesImpl> get copyWith =>
      __$$DailyPhrasesImplCopyWithImpl<_$DailyPhrasesImpl>(this, _$identity);
}

abstract class _DailyPhrases implements DailyPhrases {
  const factory _DailyPhrases({required final List<Phrase> phrases}) =
      _$DailyPhrasesImpl;

  @override
  List<Phrase> get phrases;
  @override
  @JsonKey(ignore: true)
  _$$DailyPhrasesImplCopyWith<_$DailyPhrasesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

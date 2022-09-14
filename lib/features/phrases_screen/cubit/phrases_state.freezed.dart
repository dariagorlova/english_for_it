// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phrases_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhrasesState {
  List<Phrase> get dailyPhrases => throw _privateConstructorUsedError;
  List<String> get textForDisplay => throw _privateConstructorUsedError;
  int get indexCurrenPhrase => throw _privateConstructorUsedError;
  bool get displayInEnglish => throw _privateConstructorUsedError;
  bool get sentenceDisplayed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhrasesStateCopyWith<PhrasesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhrasesStateCopyWith<$Res> {
  factory $PhrasesStateCopyWith(
          PhrasesState value, $Res Function(PhrasesState) then) =
      _$PhrasesStateCopyWithImpl<$Res>;
  $Res call(
      {List<Phrase> dailyPhrases,
      List<String> textForDisplay,
      int indexCurrenPhrase,
      bool displayInEnglish,
      bool sentenceDisplayed});
}

/// @nodoc
class _$PhrasesStateCopyWithImpl<$Res> implements $PhrasesStateCopyWith<$Res> {
  _$PhrasesStateCopyWithImpl(this._value, this._then);

  final PhrasesState _value;
  // ignore: unused_field
  final $Res Function(PhrasesState) _then;

  @override
  $Res call({
    Object? dailyPhrases = freezed,
    Object? textForDisplay = freezed,
    Object? indexCurrenPhrase = freezed,
    Object? displayInEnglish = freezed,
    Object? sentenceDisplayed = freezed,
  }) {
    return _then(_value.copyWith(
      dailyPhrases: dailyPhrases == freezed
          ? _value.dailyPhrases
          : dailyPhrases // ignore: cast_nullable_to_non_nullable
              as List<Phrase>,
      textForDisplay: textForDisplay == freezed
          ? _value.textForDisplay
          : textForDisplay // ignore: cast_nullable_to_non_nullable
              as List<String>,
      indexCurrenPhrase: indexCurrenPhrase == freezed
          ? _value.indexCurrenPhrase
          : indexCurrenPhrase // ignore: cast_nullable_to_non_nullable
              as int,
      displayInEnglish: displayInEnglish == freezed
          ? _value.displayInEnglish
          : displayInEnglish // ignore: cast_nullable_to_non_nullable
              as bool,
      sentenceDisplayed: sentenceDisplayed == freezed
          ? _value.sentenceDisplayed
          : sentenceDisplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_PhrasesStateCopyWith<$Res>
    implements $PhrasesStateCopyWith<$Res> {
  factory _$$_PhrasesStateCopyWith(
          _$_PhrasesState value, $Res Function(_$_PhrasesState) then) =
      __$$_PhrasesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Phrase> dailyPhrases,
      List<String> textForDisplay,
      int indexCurrenPhrase,
      bool displayInEnglish,
      bool sentenceDisplayed});
}

/// @nodoc
class __$$_PhrasesStateCopyWithImpl<$Res>
    extends _$PhrasesStateCopyWithImpl<$Res>
    implements _$$_PhrasesStateCopyWith<$Res> {
  __$$_PhrasesStateCopyWithImpl(
      _$_PhrasesState _value, $Res Function(_$_PhrasesState) _then)
      : super(_value, (v) => _then(v as _$_PhrasesState));

  @override
  _$_PhrasesState get _value => super._value as _$_PhrasesState;

  @override
  $Res call({
    Object? dailyPhrases = freezed,
    Object? textForDisplay = freezed,
    Object? indexCurrenPhrase = freezed,
    Object? displayInEnglish = freezed,
    Object? sentenceDisplayed = freezed,
  }) {
    return _then(_$_PhrasesState(
      dailyPhrases: dailyPhrases == freezed
          ? _value._dailyPhrases
          : dailyPhrases // ignore: cast_nullable_to_non_nullable
              as List<Phrase>,
      textForDisplay: textForDisplay == freezed
          ? _value._textForDisplay
          : textForDisplay // ignore: cast_nullable_to_non_nullable
              as List<String>,
      indexCurrenPhrase: indexCurrenPhrase == freezed
          ? _value.indexCurrenPhrase
          : indexCurrenPhrase // ignore: cast_nullable_to_non_nullable
              as int,
      displayInEnglish: displayInEnglish == freezed
          ? _value.displayInEnglish
          : displayInEnglish // ignore: cast_nullable_to_non_nullable
              as bool,
      sentenceDisplayed: sentenceDisplayed == freezed
          ? _value.sentenceDisplayed
          : sentenceDisplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PhrasesState implements _PhrasesState {
  const _$_PhrasesState(
      {required final List<Phrase> dailyPhrases,
      required final List<String> textForDisplay,
      this.indexCurrenPhrase = 0,
      this.displayInEnglish = true,
      this.sentenceDisplayed = false})
      : _dailyPhrases = dailyPhrases,
        _textForDisplay = textForDisplay;

  final List<Phrase> _dailyPhrases;
  @override
  List<Phrase> get dailyPhrases {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyPhrases);
  }

  final List<String> _textForDisplay;
  @override
  List<String> get textForDisplay {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textForDisplay);
  }

  @override
  @JsonKey()
  final int indexCurrenPhrase;
  @override
  @JsonKey()
  final bool displayInEnglish;
  @override
  @JsonKey()
  final bool sentenceDisplayed;

  @override
  String toString() {
    return 'PhrasesState(dailyPhrases: $dailyPhrases, textForDisplay: $textForDisplay, indexCurrenPhrase: $indexCurrenPhrase, displayInEnglish: $displayInEnglish, sentenceDisplayed: $sentenceDisplayed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhrasesState &&
            const DeepCollectionEquality()
                .equals(other._dailyPhrases, _dailyPhrases) &&
            const DeepCollectionEquality()
                .equals(other._textForDisplay, _textForDisplay) &&
            const DeepCollectionEquality()
                .equals(other.indexCurrenPhrase, indexCurrenPhrase) &&
            const DeepCollectionEquality()
                .equals(other.displayInEnglish, displayInEnglish) &&
            const DeepCollectionEquality()
                .equals(other.sentenceDisplayed, sentenceDisplayed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dailyPhrases),
      const DeepCollectionEquality().hash(_textForDisplay),
      const DeepCollectionEquality().hash(indexCurrenPhrase),
      const DeepCollectionEquality().hash(displayInEnglish),
      const DeepCollectionEquality().hash(sentenceDisplayed));

  @JsonKey(ignore: true)
  @override
  _$$_PhrasesStateCopyWith<_$_PhrasesState> get copyWith =>
      __$$_PhrasesStateCopyWithImpl<_$_PhrasesState>(this, _$identity);
}

abstract class _PhrasesState implements PhrasesState {
  const factory _PhrasesState(
      {required final List<Phrase> dailyPhrases,
      required final List<String> textForDisplay,
      final int indexCurrenPhrase,
      final bool displayInEnglish,
      final bool sentenceDisplayed}) = _$_PhrasesState;

  @override
  List<Phrase> get dailyPhrases;
  @override
  List<String> get textForDisplay;
  @override
  int get indexCurrenPhrase;
  @override
  bool get displayInEnglish;
  @override
  bool get sentenceDisplayed;
  @override
  @JsonKey(ignore: true)
  _$$_PhrasesStateCopyWith<_$_PhrasesState> get copyWith =>
      throw _privateConstructorUsedError;
}

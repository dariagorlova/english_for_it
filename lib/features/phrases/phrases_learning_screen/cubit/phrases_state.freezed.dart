// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  List<List<String>> get sentences => throw _privateConstructorUsedError;
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
      _$PhrasesStateCopyWithImpl<$Res, PhrasesState>;
  @useResult
  $Res call(
      {List<Phrase> dailyPhrases,
      List<List<String>> sentences,
      int indexCurrenPhrase,
      bool displayInEnglish,
      bool sentenceDisplayed});
}

/// @nodoc
class _$PhrasesStateCopyWithImpl<$Res, $Val extends PhrasesState>
    implements $PhrasesStateCopyWith<$Res> {
  _$PhrasesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyPhrases = null,
    Object? sentences = null,
    Object? indexCurrenPhrase = null,
    Object? displayInEnglish = null,
    Object? sentenceDisplayed = null,
  }) {
    return _then(_value.copyWith(
      dailyPhrases: null == dailyPhrases
          ? _value.dailyPhrases
          : dailyPhrases // ignore: cast_nullable_to_non_nullable
              as List<Phrase>,
      sentences: null == sentences
          ? _value.sentences
          : sentences // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      indexCurrenPhrase: null == indexCurrenPhrase
          ? _value.indexCurrenPhrase
          : indexCurrenPhrase // ignore: cast_nullable_to_non_nullable
              as int,
      displayInEnglish: null == displayInEnglish
          ? _value.displayInEnglish
          : displayInEnglish // ignore: cast_nullable_to_non_nullable
              as bool,
      sentenceDisplayed: null == sentenceDisplayed
          ? _value.sentenceDisplayed
          : sentenceDisplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhrasesStateImplCopyWith<$Res>
    implements $PhrasesStateCopyWith<$Res> {
  factory _$$PhrasesStateImplCopyWith(
          _$PhrasesStateImpl value, $Res Function(_$PhrasesStateImpl) then) =
      __$$PhrasesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Phrase> dailyPhrases,
      List<List<String>> sentences,
      int indexCurrenPhrase,
      bool displayInEnglish,
      bool sentenceDisplayed});
}

/// @nodoc
class __$$PhrasesStateImplCopyWithImpl<$Res>
    extends _$PhrasesStateCopyWithImpl<$Res, _$PhrasesStateImpl>
    implements _$$PhrasesStateImplCopyWith<$Res> {
  __$$PhrasesStateImplCopyWithImpl(
      _$PhrasesStateImpl _value, $Res Function(_$PhrasesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyPhrases = null,
    Object? sentences = null,
    Object? indexCurrenPhrase = null,
    Object? displayInEnglish = null,
    Object? sentenceDisplayed = null,
  }) {
    return _then(_$PhrasesStateImpl(
      dailyPhrases: null == dailyPhrases
          ? _value._dailyPhrases
          : dailyPhrases // ignore: cast_nullable_to_non_nullable
              as List<Phrase>,
      sentences: null == sentences
          ? _value._sentences
          : sentences // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      indexCurrenPhrase: null == indexCurrenPhrase
          ? _value.indexCurrenPhrase
          : indexCurrenPhrase // ignore: cast_nullable_to_non_nullable
              as int,
      displayInEnglish: null == displayInEnglish
          ? _value.displayInEnglish
          : displayInEnglish // ignore: cast_nullable_to_non_nullable
              as bool,
      sentenceDisplayed: null == sentenceDisplayed
          ? _value.sentenceDisplayed
          : sentenceDisplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PhrasesStateImpl implements _PhrasesState {
  const _$PhrasesStateImpl(
      {required final List<Phrase> dailyPhrases,
      required final List<List<String>> sentences,
      this.indexCurrenPhrase = 0,
      this.displayInEnglish = true,
      this.sentenceDisplayed = false})
      : _dailyPhrases = dailyPhrases,
        _sentences = sentences;

  final List<Phrase> _dailyPhrases;
  @override
  List<Phrase> get dailyPhrases {
    if (_dailyPhrases is EqualUnmodifiableListView) return _dailyPhrases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyPhrases);
  }

  final List<List<String>> _sentences;
  @override
  List<List<String>> get sentences {
    if (_sentences is EqualUnmodifiableListView) return _sentences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sentences);
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
    return 'PhrasesState(dailyPhrases: $dailyPhrases, sentences: $sentences, indexCurrenPhrase: $indexCurrenPhrase, displayInEnglish: $displayInEnglish, sentenceDisplayed: $sentenceDisplayed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhrasesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._dailyPhrases, _dailyPhrases) &&
            const DeepCollectionEquality()
                .equals(other._sentences, _sentences) &&
            (identical(other.indexCurrenPhrase, indexCurrenPhrase) ||
                other.indexCurrenPhrase == indexCurrenPhrase) &&
            (identical(other.displayInEnglish, displayInEnglish) ||
                other.displayInEnglish == displayInEnglish) &&
            (identical(other.sentenceDisplayed, sentenceDisplayed) ||
                other.sentenceDisplayed == sentenceDisplayed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dailyPhrases),
      const DeepCollectionEquality().hash(_sentences),
      indexCurrenPhrase,
      displayInEnglish,
      sentenceDisplayed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhrasesStateImplCopyWith<_$PhrasesStateImpl> get copyWith =>
      __$$PhrasesStateImplCopyWithImpl<_$PhrasesStateImpl>(this, _$identity);
}

abstract class _PhrasesState implements PhrasesState {
  const factory _PhrasesState(
      {required final List<Phrase> dailyPhrases,
      required final List<List<String>> sentences,
      final int indexCurrenPhrase,
      final bool displayInEnglish,
      final bool sentenceDisplayed}) = _$PhrasesStateImpl;

  @override
  List<Phrase> get dailyPhrases;
  @override
  List<List<String>> get sentences;
  @override
  int get indexCurrenPhrase;
  @override
  bool get displayInEnglish;
  @override
  bool get sentenceDisplayed;
  @override
  @JsonKey(ignore: true)
  _$$PhrasesStateImplCopyWith<_$PhrasesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

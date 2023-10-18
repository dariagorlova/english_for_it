// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phrase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Phrase {
  int get newId => throw _privateConstructorUsedError;
  String get phrase => throw _privateConstructorUsedError;
  String get byAnotherWords => throw _privateConstructorUsedError;
  String get sentence => throw _privateConstructorUsedError;
  String get byAnotherWordsTranslation => throw _privateConstructorUsedError;
  String get sentenceTranslation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhraseCopyWith<Phrase> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhraseCopyWith<$Res> {
  factory $PhraseCopyWith(Phrase value, $Res Function(Phrase) then) =
      _$PhraseCopyWithImpl<$Res, Phrase>;
  @useResult
  $Res call(
      {int newId,
      String phrase,
      String byAnotherWords,
      String sentence,
      String byAnotherWordsTranslation,
      String sentenceTranslation});
}

/// @nodoc
class _$PhraseCopyWithImpl<$Res, $Val extends Phrase>
    implements $PhraseCopyWith<$Res> {
  _$PhraseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newId = null,
    Object? phrase = null,
    Object? byAnotherWords = null,
    Object? sentence = null,
    Object? byAnotherWordsTranslation = null,
    Object? sentenceTranslation = null,
  }) {
    return _then(_value.copyWith(
      newId: null == newId
          ? _value.newId
          : newId // ignore: cast_nullable_to_non_nullable
              as int,
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      byAnotherWords: null == byAnotherWords
          ? _value.byAnotherWords
          : byAnotherWords // ignore: cast_nullable_to_non_nullable
              as String,
      sentence: null == sentence
          ? _value.sentence
          : sentence // ignore: cast_nullable_to_non_nullable
              as String,
      byAnotherWordsTranslation: null == byAnotherWordsTranslation
          ? _value.byAnotherWordsTranslation
          : byAnotherWordsTranslation // ignore: cast_nullable_to_non_nullable
              as String,
      sentenceTranslation: null == sentenceTranslation
          ? _value.sentenceTranslation
          : sentenceTranslation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhraseImplCopyWith<$Res> implements $PhraseCopyWith<$Res> {
  factory _$$PhraseImplCopyWith(
          _$PhraseImpl value, $Res Function(_$PhraseImpl) then) =
      __$$PhraseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int newId,
      String phrase,
      String byAnotherWords,
      String sentence,
      String byAnotherWordsTranslation,
      String sentenceTranslation});
}

/// @nodoc
class __$$PhraseImplCopyWithImpl<$Res>
    extends _$PhraseCopyWithImpl<$Res, _$PhraseImpl>
    implements _$$PhraseImplCopyWith<$Res> {
  __$$PhraseImplCopyWithImpl(
      _$PhraseImpl _value, $Res Function(_$PhraseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newId = null,
    Object? phrase = null,
    Object? byAnotherWords = null,
    Object? sentence = null,
    Object? byAnotherWordsTranslation = null,
    Object? sentenceTranslation = null,
  }) {
    return _then(_$PhraseImpl(
      newId: null == newId
          ? _value.newId
          : newId // ignore: cast_nullable_to_non_nullable
              as int,
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      byAnotherWords: null == byAnotherWords
          ? _value.byAnotherWords
          : byAnotherWords // ignore: cast_nullable_to_non_nullable
              as String,
      sentence: null == sentence
          ? _value.sentence
          : sentence // ignore: cast_nullable_to_non_nullable
              as String,
      byAnotherWordsTranslation: null == byAnotherWordsTranslation
          ? _value.byAnotherWordsTranslation
          : byAnotherWordsTranslation // ignore: cast_nullable_to_non_nullable
              as String,
      sentenceTranslation: null == sentenceTranslation
          ? _value.sentenceTranslation
          : sentenceTranslation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhraseImpl implements _Phrase {
  const _$PhraseImpl(
      {this.newId = -1,
      this.phrase = '',
      this.byAnotherWords = '',
      this.sentence = '',
      this.byAnotherWordsTranslation = '',
      this.sentenceTranslation = ''});

  @override
  @JsonKey()
  final int newId;
  @override
  @JsonKey()
  final String phrase;
  @override
  @JsonKey()
  final String byAnotherWords;
  @override
  @JsonKey()
  final String sentence;
  @override
  @JsonKey()
  final String byAnotherWordsTranslation;
  @override
  @JsonKey()
  final String sentenceTranslation;

  @override
  String toString() {
    return 'Phrase(newId: $newId, phrase: $phrase, byAnotherWords: $byAnotherWords, sentence: $sentence, byAnotherWordsTranslation: $byAnotherWordsTranslation, sentenceTranslation: $sentenceTranslation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhraseImpl &&
            (identical(other.newId, newId) || other.newId == newId) &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.byAnotherWords, byAnotherWords) ||
                other.byAnotherWords == byAnotherWords) &&
            (identical(other.sentence, sentence) ||
                other.sentence == sentence) &&
            (identical(other.byAnotherWordsTranslation,
                    byAnotherWordsTranslation) ||
                other.byAnotherWordsTranslation == byAnotherWordsTranslation) &&
            (identical(other.sentenceTranslation, sentenceTranslation) ||
                other.sentenceTranslation == sentenceTranslation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newId, phrase, byAnotherWords,
      sentence, byAnotherWordsTranslation, sentenceTranslation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhraseImplCopyWith<_$PhraseImpl> get copyWith =>
      __$$PhraseImplCopyWithImpl<_$PhraseImpl>(this, _$identity);
}

abstract class _Phrase implements Phrase {
  const factory _Phrase(
      {final int newId,
      final String phrase,
      final String byAnotherWords,
      final String sentence,
      final String byAnotherWordsTranslation,
      final String sentenceTranslation}) = _$PhraseImpl;

  @override
  int get newId;
  @override
  String get phrase;
  @override
  String get byAnotherWords;
  @override
  String get sentence;
  @override
  String get byAnotherWordsTranslation;
  @override
  String get sentenceTranslation;
  @override
  @JsonKey(ignore: true)
  _$$PhraseImplCopyWith<_$PhraseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

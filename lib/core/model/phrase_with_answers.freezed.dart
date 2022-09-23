// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phrase_with_answers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhraseWithAnswers {
  String get phrase => throw _privateConstructorUsedError;
  List<List<String>> get answers => throw _privateConstructorUsedError;
  int get indexOfCorrectAnswer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhraseWithAnswersCopyWith<PhraseWithAnswers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhraseWithAnswersCopyWith<$Res> {
  factory $PhraseWithAnswersCopyWith(
          PhraseWithAnswers value, $Res Function(PhraseWithAnswers) then) =
      _$PhraseWithAnswersCopyWithImpl<$Res>;
  $Res call(
      {String phrase, List<List<String>> answers, int indexOfCorrectAnswer});
}

/// @nodoc
class _$PhraseWithAnswersCopyWithImpl<$Res>
    implements $PhraseWithAnswersCopyWith<$Res> {
  _$PhraseWithAnswersCopyWithImpl(this._value, this._then);

  final PhraseWithAnswers _value;
  // ignore: unused_field
  final $Res Function(PhraseWithAnswers) _then;

  @override
  $Res call({
    Object? phrase = freezed,
    Object? answers = freezed,
    Object? indexOfCorrectAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      phrase: phrase == freezed
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      indexOfCorrectAnswer: indexOfCorrectAnswer == freezed
          ? _value.indexOfCorrectAnswer
          : indexOfCorrectAnswer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PhraseWithAnswersCopyWith<$Res>
    implements $PhraseWithAnswersCopyWith<$Res> {
  factory _$$_PhraseWithAnswersCopyWith(_$_PhraseWithAnswers value,
          $Res Function(_$_PhraseWithAnswers) then) =
      __$$_PhraseWithAnswersCopyWithImpl<$Res>;
  @override
  $Res call(
      {String phrase, List<List<String>> answers, int indexOfCorrectAnswer});
}

/// @nodoc
class __$$_PhraseWithAnswersCopyWithImpl<$Res>
    extends _$PhraseWithAnswersCopyWithImpl<$Res>
    implements _$$_PhraseWithAnswersCopyWith<$Res> {
  __$$_PhraseWithAnswersCopyWithImpl(
      _$_PhraseWithAnswers _value, $Res Function(_$_PhraseWithAnswers) _then)
      : super(_value, (v) => _then(v as _$_PhraseWithAnswers));

  @override
  _$_PhraseWithAnswers get _value => super._value as _$_PhraseWithAnswers;

  @override
  $Res call({
    Object? phrase = freezed,
    Object? answers = freezed,
    Object? indexOfCorrectAnswer = freezed,
  }) {
    return _then(_$_PhraseWithAnswers(
      phrase: phrase == freezed
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      indexOfCorrectAnswer: indexOfCorrectAnswer == freezed
          ? _value.indexOfCorrectAnswer
          : indexOfCorrectAnswer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PhraseWithAnswers implements _PhraseWithAnswers {
  const _$_PhraseWithAnswers(
      {this.phrase = '',
      final List<List<String>> answers = const [],
      this.indexOfCorrectAnswer = 0})
      : _answers = answers;

  @override
  @JsonKey()
  final String phrase;
  final List<List<String>> _answers;
  @override
  @JsonKey()
  List<List<String>> get answers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  @JsonKey()
  final int indexOfCorrectAnswer;

  @override
  String toString() {
    return 'PhraseWithAnswers(phrase: $phrase, answers: $answers, indexOfCorrectAnswer: $indexOfCorrectAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhraseWithAnswers &&
            const DeepCollectionEquality().equals(other.phrase, phrase) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality()
                .equals(other.indexOfCorrectAnswer, indexOfCorrectAnswer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phrase),
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(indexOfCorrectAnswer));

  @JsonKey(ignore: true)
  @override
  _$$_PhraseWithAnswersCopyWith<_$_PhraseWithAnswers> get copyWith =>
      __$$_PhraseWithAnswersCopyWithImpl<_$_PhraseWithAnswers>(
          this, _$identity);
}

abstract class _PhraseWithAnswers implements PhraseWithAnswers {
  const factory _PhraseWithAnswers(
      {final String phrase,
      final List<List<String>> answers,
      final int indexOfCorrectAnswer}) = _$_PhraseWithAnswers;

  @override
  String get phrase;
  @override
  List<List<String>> get answers;
  @override
  int get indexOfCorrectAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_PhraseWithAnswersCopyWith<_$_PhraseWithAnswers> get copyWith =>
      throw _privateConstructorUsedError;
}

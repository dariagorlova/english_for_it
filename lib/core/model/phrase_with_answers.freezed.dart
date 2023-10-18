// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$PhraseWithAnswersCopyWithImpl<$Res, PhraseWithAnswers>;
  @useResult
  $Res call(
      {String phrase, List<List<String>> answers, int indexOfCorrectAnswer});
}

/// @nodoc
class _$PhraseWithAnswersCopyWithImpl<$Res, $Val extends PhraseWithAnswers>
    implements $PhraseWithAnswersCopyWith<$Res> {
  _$PhraseWithAnswersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
    Object? answers = null,
    Object? indexOfCorrectAnswer = null,
  }) {
    return _then(_value.copyWith(
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      indexOfCorrectAnswer: null == indexOfCorrectAnswer
          ? _value.indexOfCorrectAnswer
          : indexOfCorrectAnswer // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhraseWithAnswersImplCopyWith<$Res>
    implements $PhraseWithAnswersCopyWith<$Res> {
  factory _$$PhraseWithAnswersImplCopyWith(_$PhraseWithAnswersImpl value,
          $Res Function(_$PhraseWithAnswersImpl) then) =
      __$$PhraseWithAnswersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phrase, List<List<String>> answers, int indexOfCorrectAnswer});
}

/// @nodoc
class __$$PhraseWithAnswersImplCopyWithImpl<$Res>
    extends _$PhraseWithAnswersCopyWithImpl<$Res, _$PhraseWithAnswersImpl>
    implements _$$PhraseWithAnswersImplCopyWith<$Res> {
  __$$PhraseWithAnswersImplCopyWithImpl(_$PhraseWithAnswersImpl _value,
      $Res Function(_$PhraseWithAnswersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
    Object? answers = null,
    Object? indexOfCorrectAnswer = null,
  }) {
    return _then(_$PhraseWithAnswersImpl(
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      indexOfCorrectAnswer: null == indexOfCorrectAnswer
          ? _value.indexOfCorrectAnswer
          : indexOfCorrectAnswer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PhraseWithAnswersImpl implements _PhraseWithAnswers {
  const _$PhraseWithAnswersImpl(
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
    if (_answers is EqualUnmodifiableListView) return _answers;
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
            other is _$PhraseWithAnswersImpl &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.indexOfCorrectAnswer, indexOfCorrectAnswer) ||
                other.indexOfCorrectAnswer == indexOfCorrectAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phrase,
      const DeepCollectionEquality().hash(_answers), indexOfCorrectAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhraseWithAnswersImplCopyWith<_$PhraseWithAnswersImpl> get copyWith =>
      __$$PhraseWithAnswersImplCopyWithImpl<_$PhraseWithAnswersImpl>(
          this, _$identity);
}

abstract class _PhraseWithAnswers implements PhraseWithAnswers {
  const factory _PhraseWithAnswers(
      {final String phrase,
      final List<List<String>> answers,
      final int indexOfCorrectAnswer}) = _$PhraseWithAnswersImpl;

  @override
  String get phrase;
  @override
  List<List<String>> get answers;
  @override
  int get indexOfCorrectAnswer;
  @override
  @JsonKey(ignore: true)
  _$$PhraseWithAnswersImplCopyWith<_$PhraseWithAnswersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

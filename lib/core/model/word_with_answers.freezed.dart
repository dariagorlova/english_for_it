// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_with_answers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WordWithAnswers {
  String get word => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;
  int get indexOfCorrectAnswer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordWithAnswersCopyWith<WordWithAnswers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordWithAnswersCopyWith<$Res> {
  factory $WordWithAnswersCopyWith(
          WordWithAnswers value, $Res Function(WordWithAnswers) then) =
      _$WordWithAnswersCopyWithImpl<$Res, WordWithAnswers>;
  @useResult
  $Res call({String word, List<String> answers, int indexOfCorrectAnswer});
}

/// @nodoc
class _$WordWithAnswersCopyWithImpl<$Res, $Val extends WordWithAnswers>
    implements $WordWithAnswersCopyWith<$Res> {
  _$WordWithAnswersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? answers = null,
    Object? indexOfCorrectAnswer = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      indexOfCorrectAnswer: null == indexOfCorrectAnswer
          ? _value.indexOfCorrectAnswer
          : indexOfCorrectAnswer // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordWithAnswersImplCopyWith<$Res>
    implements $WordWithAnswersCopyWith<$Res> {
  factory _$$WordWithAnswersImplCopyWith(_$WordWithAnswersImpl value,
          $Res Function(_$WordWithAnswersImpl) then) =
      __$$WordWithAnswersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word, List<String> answers, int indexOfCorrectAnswer});
}

/// @nodoc
class __$$WordWithAnswersImplCopyWithImpl<$Res>
    extends _$WordWithAnswersCopyWithImpl<$Res, _$WordWithAnswersImpl>
    implements _$$WordWithAnswersImplCopyWith<$Res> {
  __$$WordWithAnswersImplCopyWithImpl(
      _$WordWithAnswersImpl _value, $Res Function(_$WordWithAnswersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? answers = null,
    Object? indexOfCorrectAnswer = null,
  }) {
    return _then(_$WordWithAnswersImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      indexOfCorrectAnswer: null == indexOfCorrectAnswer
          ? _value.indexOfCorrectAnswer
          : indexOfCorrectAnswer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WordWithAnswersImpl implements _WordWithAnswers {
  const _$WordWithAnswersImpl(
      {this.word = '',
      final List<String> answers = const [],
      this.indexOfCorrectAnswer = 0})
      : _answers = answers;

  @override
  @JsonKey()
  final String word;
  final List<String> _answers;
  @override
  @JsonKey()
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  @JsonKey()
  final int indexOfCorrectAnswer;

  @override
  String toString() {
    return 'WordWithAnswers(word: $word, answers: $answers, indexOfCorrectAnswer: $indexOfCorrectAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordWithAnswersImpl &&
            (identical(other.word, word) || other.word == word) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.indexOfCorrectAnswer, indexOfCorrectAnswer) ||
                other.indexOfCorrectAnswer == indexOfCorrectAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word,
      const DeepCollectionEquality().hash(_answers), indexOfCorrectAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordWithAnswersImplCopyWith<_$WordWithAnswersImpl> get copyWith =>
      __$$WordWithAnswersImplCopyWithImpl<_$WordWithAnswersImpl>(
          this, _$identity);
}

abstract class _WordWithAnswers implements WordWithAnswers {
  const factory _WordWithAnswers(
      {final String word,
      final List<String> answers,
      final int indexOfCorrectAnswer}) = _$WordWithAnswersImpl;

  @override
  String get word;
  @override
  List<String> get answers;
  @override
  int get indexOfCorrectAnswer;
  @override
  @JsonKey(ignore: true)
  _$$WordWithAnswersImplCopyWith<_$WordWithAnswersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WordWithState {
  OneWord get word => throw _privateConstructorUsedError;
  WordState get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordWithStateCopyWith<WordWithState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordWithStateCopyWith<$Res> {
  factory $WordWithStateCopyWith(
          WordWithState value, $Res Function(WordWithState) then) =
      _$WordWithStateCopyWithImpl<$Res, WordWithState>;
  @useResult
  $Res call({OneWord word, WordState state});

  $OneWordCopyWith<$Res> get word;
}

/// @nodoc
class _$WordWithStateCopyWithImpl<$Res, $Val extends WordWithState>
    implements $WordWithStateCopyWith<$Res> {
  _$WordWithStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as OneWord,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as WordState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OneWordCopyWith<$Res> get word {
    return $OneWordCopyWith<$Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WordWithStateImplCopyWith<$Res>
    implements $WordWithStateCopyWith<$Res> {
  factory _$$WordWithStateImplCopyWith(
          _$WordWithStateImpl value, $Res Function(_$WordWithStateImpl) then) =
      __$$WordWithStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OneWord word, WordState state});

  @override
  $OneWordCopyWith<$Res> get word;
}

/// @nodoc
class __$$WordWithStateImplCopyWithImpl<$Res>
    extends _$WordWithStateCopyWithImpl<$Res, _$WordWithStateImpl>
    implements _$$WordWithStateImplCopyWith<$Res> {
  __$$WordWithStateImplCopyWithImpl(
      _$WordWithStateImpl _value, $Res Function(_$WordWithStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? state = null,
  }) {
    return _then(_$WordWithStateImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as OneWord,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as WordState,
    ));
  }
}

/// @nodoc

class _$WordWithStateImpl implements _WordWithState {
  const _$WordWithStateImpl(
      {this.word = const OneWord(word: '', translate: ''),
      this.state = WordState.initial});

  @override
  @JsonKey()
  final OneWord word;
  @override
  @JsonKey()
  final WordState state;

  @override
  String toString() {
    return 'WordWithState(word: $word, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordWithStateImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordWithStateImplCopyWith<_$WordWithStateImpl> get copyWith =>
      __$$WordWithStateImplCopyWithImpl<_$WordWithStateImpl>(this, _$identity);
}

abstract class _WordWithState implements WordWithState {
  const factory _WordWithState({final OneWord word, final WordState state}) =
      _$WordWithStateImpl;

  @override
  OneWord get word;
  @override
  WordState get state;
  @override
  @JsonKey(ignore: true)
  _$$WordWithStateImplCopyWith<_$WordWithStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

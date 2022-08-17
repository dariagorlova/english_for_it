// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$WordWithAnswersCopyWithImpl<$Res>;
  $Res call({String word, List<String> answers, int indexOfCorrectAnswer});
}

/// @nodoc
class _$WordWithAnswersCopyWithImpl<$Res>
    implements $WordWithAnswersCopyWith<$Res> {
  _$WordWithAnswersCopyWithImpl(this._value, this._then);

  final WordWithAnswers _value;
  // ignore: unused_field
  final $Res Function(WordWithAnswers) _then;

  @override
  $Res call({
    Object? word = freezed,
    Object? answers = freezed,
    Object? indexOfCorrectAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      indexOfCorrectAnswer: indexOfCorrectAnswer == freezed
          ? _value.indexOfCorrectAnswer
          : indexOfCorrectAnswer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_WordWithAnswersCopyWith<$Res>
    implements $WordWithAnswersCopyWith<$Res> {
  factory _$$_WordWithAnswersCopyWith(
          _$_WordWithAnswers value, $Res Function(_$_WordWithAnswers) then) =
      __$$_WordWithAnswersCopyWithImpl<$Res>;
  @override
  $Res call({String word, List<String> answers, int indexOfCorrectAnswer});
}

/// @nodoc
class __$$_WordWithAnswersCopyWithImpl<$Res>
    extends _$WordWithAnswersCopyWithImpl<$Res>
    implements _$$_WordWithAnswersCopyWith<$Res> {
  __$$_WordWithAnswersCopyWithImpl(
      _$_WordWithAnswers _value, $Res Function(_$_WordWithAnswers) _then)
      : super(_value, (v) => _then(v as _$_WordWithAnswers));

  @override
  _$_WordWithAnswers get _value => super._value as _$_WordWithAnswers;

  @override
  $Res call({
    Object? word = freezed,
    Object? answers = freezed,
    Object? indexOfCorrectAnswer = freezed,
  }) {
    return _then(_$_WordWithAnswers(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      indexOfCorrectAnswer: indexOfCorrectAnswer == freezed
          ? _value.indexOfCorrectAnswer
          : indexOfCorrectAnswer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WordWithAnswers implements _WordWithAnswers {
  const _$_WordWithAnswers(
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
            other is _$_WordWithAnswers &&
            const DeepCollectionEquality().equals(other.word, word) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality()
                .equals(other.indexOfCorrectAnswer, indexOfCorrectAnswer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(word),
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(indexOfCorrectAnswer));

  @JsonKey(ignore: true)
  @override
  _$$_WordWithAnswersCopyWith<_$_WordWithAnswers> get copyWith =>
      __$$_WordWithAnswersCopyWithImpl<_$_WordWithAnswers>(this, _$identity);
}

abstract class _WordWithAnswers implements WordWithAnswers {
  const factory _WordWithAnswers(
      {final String word,
      final List<String> answers,
      final int indexOfCorrectAnswer}) = _$_WordWithAnswers;

  @override
  String get word;
  @override
  List<String> get answers;
  @override
  int get indexOfCorrectAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_WordWithAnswersCopyWith<_$_WordWithAnswers> get copyWith =>
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
      _$WordWithStateCopyWithImpl<$Res>;
  $Res call({OneWord word, WordState state});

  $OneWordCopyWith<$Res> get word;
}

/// @nodoc
class _$WordWithStateCopyWithImpl<$Res>
    implements $WordWithStateCopyWith<$Res> {
  _$WordWithStateCopyWithImpl(this._value, this._then);

  final WordWithState _value;
  // ignore: unused_field
  final $Res Function(WordWithState) _then;

  @override
  $Res call({
    Object? word = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as OneWord,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as WordState,
    ));
  }

  @override
  $OneWordCopyWith<$Res> get word {
    return $OneWordCopyWith<$Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value));
    });
  }
}

/// @nodoc
abstract class _$$_WordWithStateCopyWith<$Res>
    implements $WordWithStateCopyWith<$Res> {
  factory _$$_WordWithStateCopyWith(
          _$_WordWithState value, $Res Function(_$_WordWithState) then) =
      __$$_WordWithStateCopyWithImpl<$Res>;
  @override
  $Res call({OneWord word, WordState state});

  @override
  $OneWordCopyWith<$Res> get word;
}

/// @nodoc
class __$$_WordWithStateCopyWithImpl<$Res>
    extends _$WordWithStateCopyWithImpl<$Res>
    implements _$$_WordWithStateCopyWith<$Res> {
  __$$_WordWithStateCopyWithImpl(
      _$_WordWithState _value, $Res Function(_$_WordWithState) _then)
      : super(_value, (v) => _then(v as _$_WordWithState));

  @override
  _$_WordWithState get _value => super._value as _$_WordWithState;

  @override
  $Res call({
    Object? word = freezed,
    Object? state = freezed,
  }) {
    return _then(_$_WordWithState(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as OneWord,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as WordState,
    ));
  }
}

/// @nodoc

class _$_WordWithState implements _WordWithState {
  const _$_WordWithState(
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
            other is _$_WordWithState &&
            const DeepCollectionEquality().equals(other.word, word) &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(word),
      const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$$_WordWithStateCopyWith<_$_WordWithState> get copyWith =>
      __$$_WordWithStateCopyWithImpl<_$_WordWithState>(this, _$identity);
}

abstract class _WordWithState implements WordWithState {
  const factory _WordWithState({final OneWord word, final WordState state}) =
      _$_WordWithState;

  @override
  OneWord get word;
  @override
  WordState get state;
  @override
  @JsonKey(ignore: true)
  _$$_WordWithStateCopyWith<_$_WordWithState> get copyWith =>
      throw _privateConstructorUsedError;
}

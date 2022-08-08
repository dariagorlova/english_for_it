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

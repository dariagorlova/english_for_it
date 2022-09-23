// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'testing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestingState {
  List<WordWithAnswers> get wordsWithAnswers =>
      throw _privateConstructorUsedError;
  int get indexCurrentWord => throw _privateConstructorUsedError;
  List<bool> get answerTried => throw _privateConstructorUsedError;
  int get numberOfWrongAttempts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestingStateCopyWith<TestingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestingStateCopyWith<$Res> {
  factory $TestingStateCopyWith(
          TestingState value, $Res Function(TestingState) then) =
      _$TestingStateCopyWithImpl<$Res>;
  $Res call(
      {List<WordWithAnswers> wordsWithAnswers,
      int indexCurrentWord,
      List<bool> answerTried,
      int numberOfWrongAttempts});
}

/// @nodoc
class _$TestingStateCopyWithImpl<$Res> implements $TestingStateCopyWith<$Res> {
  _$TestingStateCopyWithImpl(this._value, this._then);

  final TestingState _value;
  // ignore: unused_field
  final $Res Function(TestingState) _then;

  @override
  $Res call({
    Object? wordsWithAnswers = freezed,
    Object? indexCurrentWord = freezed,
    Object? answerTried = freezed,
    Object? numberOfWrongAttempts = freezed,
  }) {
    return _then(_value.copyWith(
      wordsWithAnswers: wordsWithAnswers == freezed
          ? _value.wordsWithAnswers
          : wordsWithAnswers // ignore: cast_nullable_to_non_nullable
              as List<WordWithAnswers>,
      indexCurrentWord: indexCurrentWord == freezed
          ? _value.indexCurrentWord
          : indexCurrentWord // ignore: cast_nullable_to_non_nullable
              as int,
      answerTried: answerTried == freezed
          ? _value.answerTried
          : answerTried // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      numberOfWrongAttempts: numberOfWrongAttempts == freezed
          ? _value.numberOfWrongAttempts
          : numberOfWrongAttempts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TestingStateCopyWith<$Res>
    implements $TestingStateCopyWith<$Res> {
  factory _$$_TestingStateCopyWith(
          _$_TestingState value, $Res Function(_$_TestingState) then) =
      __$$_TestingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<WordWithAnswers> wordsWithAnswers,
      int indexCurrentWord,
      List<bool> answerTried,
      int numberOfWrongAttempts});
}

/// @nodoc
class __$$_TestingStateCopyWithImpl<$Res>
    extends _$TestingStateCopyWithImpl<$Res>
    implements _$$_TestingStateCopyWith<$Res> {
  __$$_TestingStateCopyWithImpl(
      _$_TestingState _value, $Res Function(_$_TestingState) _then)
      : super(_value, (v) => _then(v as _$_TestingState));

  @override
  _$_TestingState get _value => super._value as _$_TestingState;

  @override
  $Res call({
    Object? wordsWithAnswers = freezed,
    Object? indexCurrentWord = freezed,
    Object? answerTried = freezed,
    Object? numberOfWrongAttempts = freezed,
  }) {
    return _then(_$_TestingState(
      wordsWithAnswers: wordsWithAnswers == freezed
          ? _value._wordsWithAnswers
          : wordsWithAnswers // ignore: cast_nullable_to_non_nullable
              as List<WordWithAnswers>,
      indexCurrentWord: indexCurrentWord == freezed
          ? _value.indexCurrentWord
          : indexCurrentWord // ignore: cast_nullable_to_non_nullable
              as int,
      answerTried: answerTried == freezed
          ? _value._answerTried
          : answerTried // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      numberOfWrongAttempts: numberOfWrongAttempts == freezed
          ? _value.numberOfWrongAttempts
          : numberOfWrongAttempts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TestingState implements _TestingState {
  const _$_TestingState(
      {final List<WordWithAnswers> wordsWithAnswers = const [],
      this.indexCurrentWord = 0,
      final List<bool> answerTried = const [],
      this.numberOfWrongAttempts = 0})
      : _wordsWithAnswers = wordsWithAnswers,
        _answerTried = answerTried;

  final List<WordWithAnswers> _wordsWithAnswers;
  @override
  @JsonKey()
  List<WordWithAnswers> get wordsWithAnswers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wordsWithAnswers);
  }

  @override
  @JsonKey()
  final int indexCurrentWord;
  final List<bool> _answerTried;
  @override
  @JsonKey()
  List<bool> get answerTried {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerTried);
  }

  @override
  @JsonKey()
  final int numberOfWrongAttempts;

  @override
  String toString() {
    return 'TestingState(wordsWithAnswers: $wordsWithAnswers, indexCurrentWord: $indexCurrentWord, answerTried: $answerTried, numberOfWrongAttempts: $numberOfWrongAttempts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestingState &&
            const DeepCollectionEquality()
                .equals(other._wordsWithAnswers, _wordsWithAnswers) &&
            const DeepCollectionEquality()
                .equals(other.indexCurrentWord, indexCurrentWord) &&
            const DeepCollectionEquality()
                .equals(other._answerTried, _answerTried) &&
            const DeepCollectionEquality()
                .equals(other.numberOfWrongAttempts, numberOfWrongAttempts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_wordsWithAnswers),
      const DeepCollectionEquality().hash(indexCurrentWord),
      const DeepCollectionEquality().hash(_answerTried),
      const DeepCollectionEquality().hash(numberOfWrongAttempts));

  @JsonKey(ignore: true)
  @override
  _$$_TestingStateCopyWith<_$_TestingState> get copyWith =>
      __$$_TestingStateCopyWithImpl<_$_TestingState>(this, _$identity);
}

abstract class _TestingState implements TestingState {
  const factory _TestingState(
      {final List<WordWithAnswers> wordsWithAnswers,
      final int indexCurrentWord,
      final List<bool> answerTried,
      final int numberOfWrongAttempts}) = _$_TestingState;

  @override
  List<WordWithAnswers> get wordsWithAnswers;
  @override
  int get indexCurrentWord;
  @override
  List<bool> get answerTried;
  @override
  int get numberOfWrongAttempts;
  @override
  @JsonKey(ignore: true)
  _$$_TestingStateCopyWith<_$_TestingState> get copyWith =>
      throw _privateConstructorUsedError;
}

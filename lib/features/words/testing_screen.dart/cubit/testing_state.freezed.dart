// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$TestingStateCopyWithImpl<$Res, TestingState>;
  @useResult
  $Res call(
      {List<WordWithAnswers> wordsWithAnswers,
      int indexCurrentWord,
      List<bool> answerTried,
      int numberOfWrongAttempts});
}

/// @nodoc
class _$TestingStateCopyWithImpl<$Res, $Val extends TestingState>
    implements $TestingStateCopyWith<$Res> {
  _$TestingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordsWithAnswers = null,
    Object? indexCurrentWord = null,
    Object? answerTried = null,
    Object? numberOfWrongAttempts = null,
  }) {
    return _then(_value.copyWith(
      wordsWithAnswers: null == wordsWithAnswers
          ? _value.wordsWithAnswers
          : wordsWithAnswers // ignore: cast_nullable_to_non_nullable
              as List<WordWithAnswers>,
      indexCurrentWord: null == indexCurrentWord
          ? _value.indexCurrentWord
          : indexCurrentWord // ignore: cast_nullable_to_non_nullable
              as int,
      answerTried: null == answerTried
          ? _value.answerTried
          : answerTried // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      numberOfWrongAttempts: null == numberOfWrongAttempts
          ? _value.numberOfWrongAttempts
          : numberOfWrongAttempts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestingStateImplCopyWith<$Res>
    implements $TestingStateCopyWith<$Res> {
  factory _$$TestingStateImplCopyWith(
          _$TestingStateImpl value, $Res Function(_$TestingStateImpl) then) =
      __$$TestingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WordWithAnswers> wordsWithAnswers,
      int indexCurrentWord,
      List<bool> answerTried,
      int numberOfWrongAttempts});
}

/// @nodoc
class __$$TestingStateImplCopyWithImpl<$Res>
    extends _$TestingStateCopyWithImpl<$Res, _$TestingStateImpl>
    implements _$$TestingStateImplCopyWith<$Res> {
  __$$TestingStateImplCopyWithImpl(
      _$TestingStateImpl _value, $Res Function(_$TestingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordsWithAnswers = null,
    Object? indexCurrentWord = null,
    Object? answerTried = null,
    Object? numberOfWrongAttempts = null,
  }) {
    return _then(_$TestingStateImpl(
      wordsWithAnswers: null == wordsWithAnswers
          ? _value._wordsWithAnswers
          : wordsWithAnswers // ignore: cast_nullable_to_non_nullable
              as List<WordWithAnswers>,
      indexCurrentWord: null == indexCurrentWord
          ? _value.indexCurrentWord
          : indexCurrentWord // ignore: cast_nullable_to_non_nullable
              as int,
      answerTried: null == answerTried
          ? _value._answerTried
          : answerTried // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      numberOfWrongAttempts: null == numberOfWrongAttempts
          ? _value.numberOfWrongAttempts
          : numberOfWrongAttempts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TestingStateImpl implements _TestingState {
  const _$TestingStateImpl(
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
    if (_wordsWithAnswers is EqualUnmodifiableListView)
      return _wordsWithAnswers;
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
    if (_answerTried is EqualUnmodifiableListView) return _answerTried;
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
            other is _$TestingStateImpl &&
            const DeepCollectionEquality()
                .equals(other._wordsWithAnswers, _wordsWithAnswers) &&
            (identical(other.indexCurrentWord, indexCurrentWord) ||
                other.indexCurrentWord == indexCurrentWord) &&
            const DeepCollectionEquality()
                .equals(other._answerTried, _answerTried) &&
            (identical(other.numberOfWrongAttempts, numberOfWrongAttempts) ||
                other.numberOfWrongAttempts == numberOfWrongAttempts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_wordsWithAnswers),
      indexCurrentWord,
      const DeepCollectionEquality().hash(_answerTried),
      numberOfWrongAttempts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestingStateImplCopyWith<_$TestingStateImpl> get copyWith =>
      __$$TestingStateImplCopyWithImpl<_$TestingStateImpl>(this, _$identity);
}

abstract class _TestingState implements TestingState {
  const factory _TestingState(
      {final List<WordWithAnswers> wordsWithAnswers,
      final int indexCurrentWord,
      final List<bool> answerTried,
      final int numberOfWrongAttempts}) = _$TestingStateImpl;

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
  _$$TestingStateImplCopyWith<_$TestingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

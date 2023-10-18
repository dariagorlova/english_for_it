// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phrases_testing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhrasesTestingState {
  List<PhraseWithAnswers> get phrasesWithAnswers =>
      throw _privateConstructorUsedError;
  int get indexCurrentPhrase => throw _privateConstructorUsedError;
  List<bool> get answerTried => throw _privateConstructorUsedError;
  int get numberOfWrongAttempts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhrasesTestingStateCopyWith<PhrasesTestingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhrasesTestingStateCopyWith<$Res> {
  factory $PhrasesTestingStateCopyWith(
          PhrasesTestingState value, $Res Function(PhrasesTestingState) then) =
      _$PhrasesTestingStateCopyWithImpl<$Res, PhrasesTestingState>;
  @useResult
  $Res call(
      {List<PhraseWithAnswers> phrasesWithAnswers,
      int indexCurrentPhrase,
      List<bool> answerTried,
      int numberOfWrongAttempts});
}

/// @nodoc
class _$PhrasesTestingStateCopyWithImpl<$Res, $Val extends PhrasesTestingState>
    implements $PhrasesTestingStateCopyWith<$Res> {
  _$PhrasesTestingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrasesWithAnswers = null,
    Object? indexCurrentPhrase = null,
    Object? answerTried = null,
    Object? numberOfWrongAttempts = null,
  }) {
    return _then(_value.copyWith(
      phrasesWithAnswers: null == phrasesWithAnswers
          ? _value.phrasesWithAnswers
          : phrasesWithAnswers // ignore: cast_nullable_to_non_nullable
              as List<PhraseWithAnswers>,
      indexCurrentPhrase: null == indexCurrentPhrase
          ? _value.indexCurrentPhrase
          : indexCurrentPhrase // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PhrasesTestingStateImplCopyWith<$Res>
    implements $PhrasesTestingStateCopyWith<$Res> {
  factory _$$PhrasesTestingStateImplCopyWith(_$PhrasesTestingStateImpl value,
          $Res Function(_$PhrasesTestingStateImpl) then) =
      __$$PhrasesTestingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PhraseWithAnswers> phrasesWithAnswers,
      int indexCurrentPhrase,
      List<bool> answerTried,
      int numberOfWrongAttempts});
}

/// @nodoc
class __$$PhrasesTestingStateImplCopyWithImpl<$Res>
    extends _$PhrasesTestingStateCopyWithImpl<$Res, _$PhrasesTestingStateImpl>
    implements _$$PhrasesTestingStateImplCopyWith<$Res> {
  __$$PhrasesTestingStateImplCopyWithImpl(_$PhrasesTestingStateImpl _value,
      $Res Function(_$PhrasesTestingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrasesWithAnswers = null,
    Object? indexCurrentPhrase = null,
    Object? answerTried = null,
    Object? numberOfWrongAttempts = null,
  }) {
    return _then(_$PhrasesTestingStateImpl(
      phrasesWithAnswers: null == phrasesWithAnswers
          ? _value._phrasesWithAnswers
          : phrasesWithAnswers // ignore: cast_nullable_to_non_nullable
              as List<PhraseWithAnswers>,
      indexCurrentPhrase: null == indexCurrentPhrase
          ? _value.indexCurrentPhrase
          : indexCurrentPhrase // ignore: cast_nullable_to_non_nullable
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

class _$PhrasesTestingStateImpl implements _PhrasesTestingState {
  const _$PhrasesTestingStateImpl(
      {final List<PhraseWithAnswers> phrasesWithAnswers = const [],
      this.indexCurrentPhrase = 0,
      final List<bool> answerTried = const [],
      this.numberOfWrongAttempts = 0})
      : _phrasesWithAnswers = phrasesWithAnswers,
        _answerTried = answerTried;

  final List<PhraseWithAnswers> _phrasesWithAnswers;
  @override
  @JsonKey()
  List<PhraseWithAnswers> get phrasesWithAnswers {
    if (_phrasesWithAnswers is EqualUnmodifiableListView)
      return _phrasesWithAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phrasesWithAnswers);
  }

  @override
  @JsonKey()
  final int indexCurrentPhrase;
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
    return 'PhrasesTestingState(phrasesWithAnswers: $phrasesWithAnswers, indexCurrentPhrase: $indexCurrentPhrase, answerTried: $answerTried, numberOfWrongAttempts: $numberOfWrongAttempts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhrasesTestingStateImpl &&
            const DeepCollectionEquality()
                .equals(other._phrasesWithAnswers, _phrasesWithAnswers) &&
            (identical(other.indexCurrentPhrase, indexCurrentPhrase) ||
                other.indexCurrentPhrase == indexCurrentPhrase) &&
            const DeepCollectionEquality()
                .equals(other._answerTried, _answerTried) &&
            (identical(other.numberOfWrongAttempts, numberOfWrongAttempts) ||
                other.numberOfWrongAttempts == numberOfWrongAttempts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_phrasesWithAnswers),
      indexCurrentPhrase,
      const DeepCollectionEquality().hash(_answerTried),
      numberOfWrongAttempts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhrasesTestingStateImplCopyWith<_$PhrasesTestingStateImpl> get copyWith =>
      __$$PhrasesTestingStateImplCopyWithImpl<_$PhrasesTestingStateImpl>(
          this, _$identity);
}

abstract class _PhrasesTestingState implements PhrasesTestingState {
  const factory _PhrasesTestingState(
      {final List<PhraseWithAnswers> phrasesWithAnswers,
      final int indexCurrentPhrase,
      final List<bool> answerTried,
      final int numberOfWrongAttempts}) = _$PhrasesTestingStateImpl;

  @override
  List<PhraseWithAnswers> get phrasesWithAnswers;
  @override
  int get indexCurrentPhrase;
  @override
  List<bool> get answerTried;
  @override
  int get numberOfWrongAttempts;
  @override
  @JsonKey(ignore: true)
  _$$PhrasesTestingStateImplCopyWith<_$PhrasesTestingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

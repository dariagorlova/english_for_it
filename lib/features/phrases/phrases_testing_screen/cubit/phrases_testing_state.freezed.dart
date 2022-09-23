// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$PhrasesTestingStateCopyWithImpl<$Res>;
  $Res call(
      {List<PhraseWithAnswers> phrasesWithAnswers,
      int indexCurrentPhrase,
      List<bool> answerTried,
      int numberOfWrongAttempts});
}

/// @nodoc
class _$PhrasesTestingStateCopyWithImpl<$Res>
    implements $PhrasesTestingStateCopyWith<$Res> {
  _$PhrasesTestingStateCopyWithImpl(this._value, this._then);

  final PhrasesTestingState _value;
  // ignore: unused_field
  final $Res Function(PhrasesTestingState) _then;

  @override
  $Res call({
    Object? phrasesWithAnswers = freezed,
    Object? indexCurrentPhrase = freezed,
    Object? answerTried = freezed,
    Object? numberOfWrongAttempts = freezed,
  }) {
    return _then(_value.copyWith(
      phrasesWithAnswers: phrasesWithAnswers == freezed
          ? _value.phrasesWithAnswers
          : phrasesWithAnswers // ignore: cast_nullable_to_non_nullable
              as List<PhraseWithAnswers>,
      indexCurrentPhrase: indexCurrentPhrase == freezed
          ? _value.indexCurrentPhrase
          : indexCurrentPhrase // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_PhrasesTestingStateCopyWith<$Res>
    implements $PhrasesTestingStateCopyWith<$Res> {
  factory _$$_PhrasesTestingStateCopyWith(_$_PhrasesTestingState value,
          $Res Function(_$_PhrasesTestingState) then) =
      __$$_PhrasesTestingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PhraseWithAnswers> phrasesWithAnswers,
      int indexCurrentPhrase,
      List<bool> answerTried,
      int numberOfWrongAttempts});
}

/// @nodoc
class __$$_PhrasesTestingStateCopyWithImpl<$Res>
    extends _$PhrasesTestingStateCopyWithImpl<$Res>
    implements _$$_PhrasesTestingStateCopyWith<$Res> {
  __$$_PhrasesTestingStateCopyWithImpl(_$_PhrasesTestingState _value,
      $Res Function(_$_PhrasesTestingState) _then)
      : super(_value, (v) => _then(v as _$_PhrasesTestingState));

  @override
  _$_PhrasesTestingState get _value => super._value as _$_PhrasesTestingState;

  @override
  $Res call({
    Object? phrasesWithAnswers = freezed,
    Object? indexCurrentPhrase = freezed,
    Object? answerTried = freezed,
    Object? numberOfWrongAttempts = freezed,
  }) {
    return _then(_$_PhrasesTestingState(
      phrasesWithAnswers: phrasesWithAnswers == freezed
          ? _value._phrasesWithAnswers
          : phrasesWithAnswers // ignore: cast_nullable_to_non_nullable
              as List<PhraseWithAnswers>,
      indexCurrentPhrase: indexCurrentPhrase == freezed
          ? _value.indexCurrentPhrase
          : indexCurrentPhrase // ignore: cast_nullable_to_non_nullable
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

class _$_PhrasesTestingState implements _PhrasesTestingState {
  const _$_PhrasesTestingState(
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
            other is _$_PhrasesTestingState &&
            const DeepCollectionEquality()
                .equals(other._phrasesWithAnswers, _phrasesWithAnswers) &&
            const DeepCollectionEquality()
                .equals(other.indexCurrentPhrase, indexCurrentPhrase) &&
            const DeepCollectionEquality()
                .equals(other._answerTried, _answerTried) &&
            const DeepCollectionEquality()
                .equals(other.numberOfWrongAttempts, numberOfWrongAttempts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_phrasesWithAnswers),
      const DeepCollectionEquality().hash(indexCurrentPhrase),
      const DeepCollectionEquality().hash(_answerTried),
      const DeepCollectionEquality().hash(numberOfWrongAttempts));

  @JsonKey(ignore: true)
  @override
  _$$_PhrasesTestingStateCopyWith<_$_PhrasesTestingState> get copyWith =>
      __$$_PhrasesTestingStateCopyWithImpl<_$_PhrasesTestingState>(
          this, _$identity);
}

abstract class _PhrasesTestingState implements PhrasesTestingState {
  const factory _PhrasesTestingState(
      {final List<PhraseWithAnswers> phrasesWithAnswers,
      final int indexCurrentPhrase,
      final List<bool> answerTried,
      final int numberOfWrongAttempts}) = _$_PhrasesTestingState;

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
  _$$_PhrasesTestingStateCopyWith<_$_PhrasesTestingState> get copyWith =>
      throw _privateConstructorUsedError;
}

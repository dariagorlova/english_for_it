// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pairs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PairsState {
  List<WordWithState> get wordsOnTheLeft => throw _privateConstructorUsedError;
  List<WordWithState> get wordsOnTheRight => throw _privateConstructorUsedError;
  List<String> get currentPair => throw _privateConstructorUsedError;
  bool get isFirstWordInPairInEN => throw _privateConstructorUsedError;
  int get numberOfWrongAttempts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PairsStateCopyWith<PairsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairsStateCopyWith<$Res> {
  factory $PairsStateCopyWith(
          PairsState value, $Res Function(PairsState) then) =
      _$PairsStateCopyWithImpl<$Res, PairsState>;
  @useResult
  $Res call(
      {List<WordWithState> wordsOnTheLeft,
      List<WordWithState> wordsOnTheRight,
      List<String> currentPair,
      bool isFirstWordInPairInEN,
      int numberOfWrongAttempts});
}

/// @nodoc
class _$PairsStateCopyWithImpl<$Res, $Val extends PairsState>
    implements $PairsStateCopyWith<$Res> {
  _$PairsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordsOnTheLeft = null,
    Object? wordsOnTheRight = null,
    Object? currentPair = null,
    Object? isFirstWordInPairInEN = null,
    Object? numberOfWrongAttempts = null,
  }) {
    return _then(_value.copyWith(
      wordsOnTheLeft: null == wordsOnTheLeft
          ? _value.wordsOnTheLeft
          : wordsOnTheLeft // ignore: cast_nullable_to_non_nullable
              as List<WordWithState>,
      wordsOnTheRight: null == wordsOnTheRight
          ? _value.wordsOnTheRight
          : wordsOnTheRight // ignore: cast_nullable_to_non_nullable
              as List<WordWithState>,
      currentPair: null == currentPair
          ? _value.currentPair
          : currentPair // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFirstWordInPairInEN: null == isFirstWordInPairInEN
          ? _value.isFirstWordInPairInEN
          : isFirstWordInPairInEN // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfWrongAttempts: null == numberOfWrongAttempts
          ? _value.numberOfWrongAttempts
          : numberOfWrongAttempts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PairsStateImplCopyWith<$Res>
    implements $PairsStateCopyWith<$Res> {
  factory _$$PairsStateImplCopyWith(
          _$PairsStateImpl value, $Res Function(_$PairsStateImpl) then) =
      __$$PairsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WordWithState> wordsOnTheLeft,
      List<WordWithState> wordsOnTheRight,
      List<String> currentPair,
      bool isFirstWordInPairInEN,
      int numberOfWrongAttempts});
}

/// @nodoc
class __$$PairsStateImplCopyWithImpl<$Res>
    extends _$PairsStateCopyWithImpl<$Res, _$PairsStateImpl>
    implements _$$PairsStateImplCopyWith<$Res> {
  __$$PairsStateImplCopyWithImpl(
      _$PairsStateImpl _value, $Res Function(_$PairsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordsOnTheLeft = null,
    Object? wordsOnTheRight = null,
    Object? currentPair = null,
    Object? isFirstWordInPairInEN = null,
    Object? numberOfWrongAttempts = null,
  }) {
    return _then(_$PairsStateImpl(
      wordsOnTheLeft: null == wordsOnTheLeft
          ? _value._wordsOnTheLeft
          : wordsOnTheLeft // ignore: cast_nullable_to_non_nullable
              as List<WordWithState>,
      wordsOnTheRight: null == wordsOnTheRight
          ? _value._wordsOnTheRight
          : wordsOnTheRight // ignore: cast_nullable_to_non_nullable
              as List<WordWithState>,
      currentPair: null == currentPair
          ? _value._currentPair
          : currentPair // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFirstWordInPairInEN: null == isFirstWordInPairInEN
          ? _value.isFirstWordInPairInEN
          : isFirstWordInPairInEN // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfWrongAttempts: null == numberOfWrongAttempts
          ? _value.numberOfWrongAttempts
          : numberOfWrongAttempts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PairsStateImpl implements _PairsState {
  const _$PairsStateImpl(
      {final List<WordWithState> wordsOnTheLeft = const [],
      final List<WordWithState> wordsOnTheRight = const [],
      final List<String> currentPair = const [],
      this.isFirstWordInPairInEN = true,
      this.numberOfWrongAttempts = 0})
      : _wordsOnTheLeft = wordsOnTheLeft,
        _wordsOnTheRight = wordsOnTheRight,
        _currentPair = currentPair;

  final List<WordWithState> _wordsOnTheLeft;
  @override
  @JsonKey()
  List<WordWithState> get wordsOnTheLeft {
    if (_wordsOnTheLeft is EqualUnmodifiableListView) return _wordsOnTheLeft;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wordsOnTheLeft);
  }

  final List<WordWithState> _wordsOnTheRight;
  @override
  @JsonKey()
  List<WordWithState> get wordsOnTheRight {
    if (_wordsOnTheRight is EqualUnmodifiableListView) return _wordsOnTheRight;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wordsOnTheRight);
  }

  final List<String> _currentPair;
  @override
  @JsonKey()
  List<String> get currentPair {
    if (_currentPair is EqualUnmodifiableListView) return _currentPair;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentPair);
  }

  @override
  @JsonKey()
  final bool isFirstWordInPairInEN;
  @override
  @JsonKey()
  final int numberOfWrongAttempts;

  @override
  String toString() {
    return 'PairsState(wordsOnTheLeft: $wordsOnTheLeft, wordsOnTheRight: $wordsOnTheRight, currentPair: $currentPair, isFirstWordInPairInEN: $isFirstWordInPairInEN, numberOfWrongAttempts: $numberOfWrongAttempts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PairsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._wordsOnTheLeft, _wordsOnTheLeft) &&
            const DeepCollectionEquality()
                .equals(other._wordsOnTheRight, _wordsOnTheRight) &&
            const DeepCollectionEquality()
                .equals(other._currentPair, _currentPair) &&
            (identical(other.isFirstWordInPairInEN, isFirstWordInPairInEN) ||
                other.isFirstWordInPairInEN == isFirstWordInPairInEN) &&
            (identical(other.numberOfWrongAttempts, numberOfWrongAttempts) ||
                other.numberOfWrongAttempts == numberOfWrongAttempts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_wordsOnTheLeft),
      const DeepCollectionEquality().hash(_wordsOnTheRight),
      const DeepCollectionEquality().hash(_currentPair),
      isFirstWordInPairInEN,
      numberOfWrongAttempts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PairsStateImplCopyWith<_$PairsStateImpl> get copyWith =>
      __$$PairsStateImplCopyWithImpl<_$PairsStateImpl>(this, _$identity);
}

abstract class _PairsState implements PairsState {
  const factory _PairsState(
      {final List<WordWithState> wordsOnTheLeft,
      final List<WordWithState> wordsOnTheRight,
      final List<String> currentPair,
      final bool isFirstWordInPairInEN,
      final int numberOfWrongAttempts}) = _$PairsStateImpl;

  @override
  List<WordWithState> get wordsOnTheLeft;
  @override
  List<WordWithState> get wordsOnTheRight;
  @override
  List<String> get currentPair;
  @override
  bool get isFirstWordInPairInEN;
  @override
  int get numberOfWrongAttempts;
  @override
  @JsonKey(ignore: true)
  _$$PairsStateImplCopyWith<_$PairsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

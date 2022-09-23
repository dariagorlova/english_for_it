// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$PairsStateCopyWithImpl<$Res>;
  $Res call(
      {List<WordWithState> wordsOnTheLeft,
      List<WordWithState> wordsOnTheRight,
      List<String> currentPair,
      bool isFirstWordInPairInEN,
      int numberOfWrongAttempts});
}

/// @nodoc
class _$PairsStateCopyWithImpl<$Res> implements $PairsStateCopyWith<$Res> {
  _$PairsStateCopyWithImpl(this._value, this._then);

  final PairsState _value;
  // ignore: unused_field
  final $Res Function(PairsState) _then;

  @override
  $Res call({
    Object? wordsOnTheLeft = freezed,
    Object? wordsOnTheRight = freezed,
    Object? currentPair = freezed,
    Object? isFirstWordInPairInEN = freezed,
    Object? numberOfWrongAttempts = freezed,
  }) {
    return _then(_value.copyWith(
      wordsOnTheLeft: wordsOnTheLeft == freezed
          ? _value.wordsOnTheLeft
          : wordsOnTheLeft // ignore: cast_nullable_to_non_nullable
              as List<WordWithState>,
      wordsOnTheRight: wordsOnTheRight == freezed
          ? _value.wordsOnTheRight
          : wordsOnTheRight // ignore: cast_nullable_to_non_nullable
              as List<WordWithState>,
      currentPair: currentPair == freezed
          ? _value.currentPair
          : currentPair // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFirstWordInPairInEN: isFirstWordInPairInEN == freezed
          ? _value.isFirstWordInPairInEN
          : isFirstWordInPairInEN // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfWrongAttempts: numberOfWrongAttempts == freezed
          ? _value.numberOfWrongAttempts
          : numberOfWrongAttempts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PairsStateCopyWith<$Res>
    implements $PairsStateCopyWith<$Res> {
  factory _$$_PairsStateCopyWith(
          _$_PairsState value, $Res Function(_$_PairsState) then) =
      __$$_PairsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<WordWithState> wordsOnTheLeft,
      List<WordWithState> wordsOnTheRight,
      List<String> currentPair,
      bool isFirstWordInPairInEN,
      int numberOfWrongAttempts});
}

/// @nodoc
class __$$_PairsStateCopyWithImpl<$Res> extends _$PairsStateCopyWithImpl<$Res>
    implements _$$_PairsStateCopyWith<$Res> {
  __$$_PairsStateCopyWithImpl(
      _$_PairsState _value, $Res Function(_$_PairsState) _then)
      : super(_value, (v) => _then(v as _$_PairsState));

  @override
  _$_PairsState get _value => super._value as _$_PairsState;

  @override
  $Res call({
    Object? wordsOnTheLeft = freezed,
    Object? wordsOnTheRight = freezed,
    Object? currentPair = freezed,
    Object? isFirstWordInPairInEN = freezed,
    Object? numberOfWrongAttempts = freezed,
  }) {
    return _then(_$_PairsState(
      wordsOnTheLeft: wordsOnTheLeft == freezed
          ? _value._wordsOnTheLeft
          : wordsOnTheLeft // ignore: cast_nullable_to_non_nullable
              as List<WordWithState>,
      wordsOnTheRight: wordsOnTheRight == freezed
          ? _value._wordsOnTheRight
          : wordsOnTheRight // ignore: cast_nullable_to_non_nullable
              as List<WordWithState>,
      currentPair: currentPair == freezed
          ? _value._currentPair
          : currentPair // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFirstWordInPairInEN: isFirstWordInPairInEN == freezed
          ? _value.isFirstWordInPairInEN
          : isFirstWordInPairInEN // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfWrongAttempts: numberOfWrongAttempts == freezed
          ? _value.numberOfWrongAttempts
          : numberOfWrongAttempts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PairsState implements _PairsState {
  const _$_PairsState(
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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wordsOnTheLeft);
  }

  final List<WordWithState> _wordsOnTheRight;
  @override
  @JsonKey()
  List<WordWithState> get wordsOnTheRight {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wordsOnTheRight);
  }

  final List<String> _currentPair;
  @override
  @JsonKey()
  List<String> get currentPair {
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
            other is _$_PairsState &&
            const DeepCollectionEquality()
                .equals(other._wordsOnTheLeft, _wordsOnTheLeft) &&
            const DeepCollectionEquality()
                .equals(other._wordsOnTheRight, _wordsOnTheRight) &&
            const DeepCollectionEquality()
                .equals(other._currentPair, _currentPair) &&
            const DeepCollectionEquality()
                .equals(other.isFirstWordInPairInEN, isFirstWordInPairInEN) &&
            const DeepCollectionEquality()
                .equals(other.numberOfWrongAttempts, numberOfWrongAttempts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_wordsOnTheLeft),
      const DeepCollectionEquality().hash(_wordsOnTheRight),
      const DeepCollectionEquality().hash(_currentPair),
      const DeepCollectionEquality().hash(isFirstWordInPairInEN),
      const DeepCollectionEquality().hash(numberOfWrongAttempts));

  @JsonKey(ignore: true)
  @override
  _$$_PairsStateCopyWith<_$_PairsState> get copyWith =>
      __$$_PairsStateCopyWithImpl<_$_PairsState>(this, _$identity);
}

abstract class _PairsState implements PairsState {
  const factory _PairsState(
      {final List<WordWithState> wordsOnTheLeft,
      final List<WordWithState> wordsOnTheRight,
      final List<String> currentPair,
      final bool isFirstWordInPairInEN,
      final int numberOfWrongAttempts}) = _$_PairsState;

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
  _$$_PairsStateCopyWith<_$_PairsState> get copyWith =>
      throw _privateConstructorUsedError;
}

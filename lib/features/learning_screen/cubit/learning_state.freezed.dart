// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'learning_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LearningState {
  List<OneWord> get dailyWords => throw _privateConstructorUsedError;
  int get indexCurrentWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LearningStateCopyWith<LearningState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningStateCopyWith<$Res> {
  factory $LearningStateCopyWith(
          LearningState value, $Res Function(LearningState) then) =
      _$LearningStateCopyWithImpl<$Res>;
  $Res call({List<OneWord> dailyWords, int indexCurrentWord});
}

/// @nodoc
class _$LearningStateCopyWithImpl<$Res>
    implements $LearningStateCopyWith<$Res> {
  _$LearningStateCopyWithImpl(this._value, this._then);

  final LearningState _value;
  // ignore: unused_field
  final $Res Function(LearningState) _then;

  @override
  $Res call({
    Object? dailyWords = freezed,
    Object? indexCurrentWord = freezed,
  }) {
    return _then(_value.copyWith(
      dailyWords: dailyWords == freezed
          ? _value.dailyWords
          : dailyWords // ignore: cast_nullable_to_non_nullable
              as List<OneWord>,
      indexCurrentWord: indexCurrentWord == freezed
          ? _value.indexCurrentWord
          : indexCurrentWord // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_LearningStateCopyWith<$Res>
    implements $LearningStateCopyWith<$Res> {
  factory _$$_LearningStateCopyWith(
          _$_LearningState value, $Res Function(_$_LearningState) then) =
      __$$_LearningStateCopyWithImpl<$Res>;
  @override
  $Res call({List<OneWord> dailyWords, int indexCurrentWord});
}

/// @nodoc
class __$$_LearningStateCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res>
    implements _$$_LearningStateCopyWith<$Res> {
  __$$_LearningStateCopyWithImpl(
      _$_LearningState _value, $Res Function(_$_LearningState) _then)
      : super(_value, (v) => _then(v as _$_LearningState));

  @override
  _$_LearningState get _value => super._value as _$_LearningState;

  @override
  $Res call({
    Object? dailyWords = freezed,
    Object? indexCurrentWord = freezed,
  }) {
    return _then(_$_LearningState(
      dailyWords: dailyWords == freezed
          ? _value._dailyWords
          : dailyWords // ignore: cast_nullable_to_non_nullable
              as List<OneWord>,
      indexCurrentWord: indexCurrentWord == freezed
          ? _value.indexCurrentWord
          : indexCurrentWord // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LearningState implements _LearningState {
  const _$_LearningState(
      {required final List<OneWord> dailyWords, this.indexCurrentWord = 0})
      : _dailyWords = dailyWords;

  final List<OneWord> _dailyWords;
  @override
  List<OneWord> get dailyWords {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyWords);
  }

  @override
  @JsonKey()
  final int indexCurrentWord;

  @override
  String toString() {
    return 'LearningState(dailyWords: $dailyWords, indexCurrentWord: $indexCurrentWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningState &&
            const DeepCollectionEquality()
                .equals(other._dailyWords, _dailyWords) &&
            const DeepCollectionEquality()
                .equals(other.indexCurrentWord, indexCurrentWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dailyWords),
      const DeepCollectionEquality().hash(indexCurrentWord));

  @JsonKey(ignore: true)
  @override
  _$$_LearningStateCopyWith<_$_LearningState> get copyWith =>
      __$$_LearningStateCopyWithImpl<_$_LearningState>(this, _$identity);
}

abstract class _LearningState implements LearningState {
  const factory _LearningState(
      {required final List<OneWord> dailyWords,
      final int indexCurrentWord}) = _$_LearningState;

  @override
  List<OneWord> get dailyWords;
  @override
  int get indexCurrentWord;
  @override
  @JsonKey(ignore: true)
  _$$_LearningStateCopyWith<_$_LearningState> get copyWith =>
      throw _privateConstructorUsedError;
}

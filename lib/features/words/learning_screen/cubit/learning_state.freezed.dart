// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$LearningStateCopyWithImpl<$Res, LearningState>;
  @useResult
  $Res call({List<OneWord> dailyWords, int indexCurrentWord});
}

/// @nodoc
class _$LearningStateCopyWithImpl<$Res, $Val extends LearningState>
    implements $LearningStateCopyWith<$Res> {
  _$LearningStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyWords = null,
    Object? indexCurrentWord = null,
  }) {
    return _then(_value.copyWith(
      dailyWords: null == dailyWords
          ? _value.dailyWords
          : dailyWords // ignore: cast_nullable_to_non_nullable
              as List<OneWord>,
      indexCurrentWord: null == indexCurrentWord
          ? _value.indexCurrentWord
          : indexCurrentWord // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningStateImplCopyWith<$Res>
    implements $LearningStateCopyWith<$Res> {
  factory _$$LearningStateImplCopyWith(
          _$LearningStateImpl value, $Res Function(_$LearningStateImpl) then) =
      __$$LearningStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OneWord> dailyWords, int indexCurrentWord});
}

/// @nodoc
class __$$LearningStateImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res, _$LearningStateImpl>
    implements _$$LearningStateImplCopyWith<$Res> {
  __$$LearningStateImplCopyWithImpl(
      _$LearningStateImpl _value, $Res Function(_$LearningStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyWords = null,
    Object? indexCurrentWord = null,
  }) {
    return _then(_$LearningStateImpl(
      dailyWords: null == dailyWords
          ? _value._dailyWords
          : dailyWords // ignore: cast_nullable_to_non_nullable
              as List<OneWord>,
      indexCurrentWord: null == indexCurrentWord
          ? _value.indexCurrentWord
          : indexCurrentWord // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LearningStateImpl implements _LearningState {
  const _$LearningStateImpl(
      {required final List<OneWord> dailyWords, this.indexCurrentWord = 0})
      : _dailyWords = dailyWords;

  final List<OneWord> _dailyWords;
  @override
  List<OneWord> get dailyWords {
    if (_dailyWords is EqualUnmodifiableListView) return _dailyWords;
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
            other is _$LearningStateImpl &&
            const DeepCollectionEquality()
                .equals(other._dailyWords, _dailyWords) &&
            (identical(other.indexCurrentWord, indexCurrentWord) ||
                other.indexCurrentWord == indexCurrentWord));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_dailyWords), indexCurrentWord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningStateImplCopyWith<_$LearningStateImpl> get copyWith =>
      __$$LearningStateImplCopyWithImpl<_$LearningStateImpl>(this, _$identity);
}

abstract class _LearningState implements LearningState {
  const factory _LearningState(
      {required final List<OneWord> dailyWords,
      final int indexCurrentWord}) = _$LearningStateImpl;

  @override
  List<OneWord> get dailyWords;
  @override
  int get indexCurrentWord;
  @override
  @JsonKey(ignore: true)
  _$$LearningStateImplCopyWith<_$LearningStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

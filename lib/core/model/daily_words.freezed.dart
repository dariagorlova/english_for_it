// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_words.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DailyWords {
  List<OneWord> get words => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyWordsCopyWith<DailyWords> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWordsCopyWith<$Res> {
  factory $DailyWordsCopyWith(
          DailyWords value, $Res Function(DailyWords) then) =
      _$DailyWordsCopyWithImpl<$Res, DailyWords>;
  @useResult
  $Res call({List<OneWord> words});
}

/// @nodoc
class _$DailyWordsCopyWithImpl<$Res, $Val extends DailyWords>
    implements $DailyWordsCopyWith<$Res> {
  _$DailyWordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_value.copyWith(
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<OneWord>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyWordsImplCopyWith<$Res>
    implements $DailyWordsCopyWith<$Res> {
  factory _$$DailyWordsImplCopyWith(
          _$DailyWordsImpl value, $Res Function(_$DailyWordsImpl) then) =
      __$$DailyWordsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OneWord> words});
}

/// @nodoc
class __$$DailyWordsImplCopyWithImpl<$Res>
    extends _$DailyWordsCopyWithImpl<$Res, _$DailyWordsImpl>
    implements _$$DailyWordsImplCopyWith<$Res> {
  __$$DailyWordsImplCopyWithImpl(
      _$DailyWordsImpl _value, $Res Function(_$DailyWordsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_$DailyWordsImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<OneWord>,
    ));
  }
}

/// @nodoc

class _$DailyWordsImpl implements _DailyWords {
  const _$DailyWordsImpl({required final List<OneWord> words}) : _words = words;

  final List<OneWord> _words;
  @override
  List<OneWord> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  String toString() {
    return 'DailyWords(words: $words)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyWordsImpl &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyWordsImplCopyWith<_$DailyWordsImpl> get copyWith =>
      __$$DailyWordsImplCopyWithImpl<_$DailyWordsImpl>(this, _$identity);
}

abstract class _DailyWords implements DailyWords {
  const factory _DailyWords({required final List<OneWord> words}) =
      _$DailyWordsImpl;

  @override
  List<OneWord> get words;
  @override
  @JsonKey(ignore: true)
  _$$DailyWordsImplCopyWith<_$DailyWordsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

import 'package:english_for_it/core/model/one_word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default([]) List<OneWord> words,
  }) = _SearchState;
}

import 'package:english_for_it/core/model/phrase.dart';
import 'package:english_for_it/features/phrases/phrases_learning_screen/widgets/phrase_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phrases_state.freezed.dart';

@freezed
class PhrasesState with _$PhrasesState {
  const factory PhrasesState({
    required List<Phrase> dailyPhrases,
    required List<List<String>> sentences,
    @Default(0) int indexCurrenPhrase,
    @Default(true) bool displayInEnglish,
    @Default(false) bool sentenceDisplayed,
  }) = _PhrasesState;
}

extension XPhrasesState on PhrasesState {
  String get sentenceTranslation =>
      dailyPhrases[indexCurrenPhrase].sentenceTranslation;
  List<String> get sentence => sentences[indexCurrenPhrase];

  String get byAnotherWords => displayInEnglish
      ? dailyPhrases[indexCurrenPhrase].byAnotherWords
      : dailyPhrases[indexCurrenPhrase].byAnotherWordsTranslation;

  bool get isCurrentPhraseFirst => indexCurrenPhrase == 0;

  bool get isCurrentPhraseLast =>
      indexCurrenPhrase == (dailyPhrases.length - 1);

  CardStatus get cardStatus {
    if (isCurrentPhraseFirst) {
      return CardStatus.first;
    } else if (isCurrentPhraseLast) {
      return CardStatus.last;
    } else {
      return CardStatus.intermediate;
    }
  }

  bool get isLoading => dailyPhrases.isEmpty;
}

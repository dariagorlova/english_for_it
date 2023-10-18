import 'package:english_for_it/core/model/one_word.dart';
import 'package:english_for_it/core/model/phrase.dart';
import 'package:english_for_it/core/service/daily_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockWordsRepository extends Mock implements DailyRepository {}

DailyRepository getWordsRepository() {
  final mock = MockWordsRepository();
  when(mock.getDailyWords).thenAnswer((_) async {
    return const [
      OneWord(word: 'developer', translate: 'розробниця'),
      OneWord(word: 'computer', translate: 'компʼютер'),
      OneWord(word: 'bug', translate: 'помилка'),
      OneWord(word: 'keyboard', translate: 'клавіатура'),
      OneWord(word: 'code', translate: 'код'),
      OneWord(word: 'task', translate: 'завдання'),
      OneWord(word: 'generation', translate: 'генерація'),
      OneWord(word: 'repository', translate: 'репозиторій'),
      OneWord(word: 'meeting', translate: 'зустріч'),
      OneWord(word: 'deadline', translate: 'крайній термін'),
    ];
  });
  when(mock.getAllWords).thenAnswer((_) async {
    return const [
      OneWord(word: 'developer', translate: 'розробниця'),
      OneWord(word: 'computer', translate: 'компʼютер'),
      OneWord(word: 'bug', translate: 'помилка'),
    ];
  });
  when(mock.getDailyPhrases).thenAnswer((_) async {
    return const [
      Phrase(
        phrase: 'proficient',
        byAnotherWords: 'be very good at',
        sentence: "He's proficient in Java.",
        byAnotherWordsTranslation: 'бути досвідченим у',
        sentenceTranslation: 'Він досконало володіє Java.',
      ),
      Phrase(
        phrase: 'has a background',
        byAnotherWords: 'have experience doing something',
        sentence: 'He has a background in industrial design.',
        byAnotherWordsTranslation: 'мати досвід робити щось',
        sentenceTranslation: 'Він має досвід промислового дизайну.',
      ),
      Phrase(
        phrase: 'perspective',
        byAnotherWords: 'opinion/position',
        sentence: 'My perspective on this is different.',
        byAnotherWordsTranslation: 'думка/позиція',
        sentenceTranslation: 'Моя точка зору на це інша.',
      ),
      Phrase(
        phrase: 'robust',
        byAnotherWords: 'very solid',
        sentence: 'We designed a robust architecture.',
        byAnotherWordsTranslation: 'дуже міцний',
        sentenceTranslation: 'Ми розробили надійну архітектуру.',
      ),
      Phrase(
        phrase: 'extraordinary',
        byAnotherWords: 'great/remarkable',
        sentence: 'He has extraordinary coding abilities.',
        byAnotherWordsTranslation: 'великий/чудовий',
        sentenceTranslation: 'Він має надзвичайні здібності до кодування.',
      ),
      Phrase(
        phrase: 'customer-centric',
        byAnotherWords: 'prioritizing the customers',
        sentence: 'We are a customer-centric company.',
        byAnotherWordsTranslation: 'пріоритетність клієнтів',
        sentenceTranslation: 'Ми клієнтоорієнтована компанія.',
      ),
      Phrase(
        phrase: 'bring to the table',
        byAnotherWords: 'contribute',
        sentence: 'What does he bring to the table?',
        byAnotherWordsTranslation: 'сприяти',
        sentenceTranslation: 'Чому він сприяє?',
      ),
      Phrase(
        phrase: 'came up',
        byAnotherWords: 'invent/think of',
        sentence: 'He came up with a brilliant plan.',
        byAnotherWordsTranslation: 'придумати',
        sentenceTranslation: 'Він придумав геніальний план.',
      ),
      Phrase(
        phrase: 'fit my needs',
        byAnotherWords: 'be useful for your particular case',
        sentence: "This service doesn't fit my needs.",
        byAnotherWordsTranslation: 'бути корисним для вашого конкретного випадку',
        sentenceTranslation: 'Ця послуга не відповідає моїм потребам.',
      ),
      Phrase(
        phrase: 'eliminated',
        byAnotherWords: 'remove/get rid of',
        sentence: "We've eliminated a few major issues.",
        byAnotherWordsTranslation: 'видалити/позбутися',
        sentenceTranslation: 'Ми усунули кілька основних проблем.',
      ),
    ];
  });
  return mock;
}

// DailyRepository getPhrasesRepository() {
//   final mock = MockWordsRepository();

//   when(mock.getDailyPhrases).thenAnswer((_) async {
//     return const [
//       Phrase(
//         newId: -1,
//         phrase: 'proficient',
//         byAnotherWords: 'be very good at',
//         sentence: "He's proficient in Java",
//         byAnotherWordsTranslation: 'бути досвідченим у',
//         sentenceTranslation: 'Він досконало володіє Java.',
//       ),
//       Phrase(
//         newId: -1,
//         phrase: 'has a background',
//         byAnotherWords: 'have experience doing something',
//         sentence: 'He has a background in industrial design.',
//         byAnotherWordsTranslation: 'мати досвід робити щось',
//         sentenceTranslation: 'Він має досвід промислового дизайну.',
//       ),
//       Phrase(
//         newId: -1,
//         phrase: 'perspective',
//         byAnotherWords: 'opinion/position',
//         sentence: 'My perspective on this is different.',
//         byAnotherWordsTranslation: 'думка/позиція',
//         sentenceTranslation: 'Моя точка зору на це інша.',
//       ),
//       Phrase(
//         newId: -1,
//         phrase: 'robust',
//         byAnotherWords: 'very solid',
//         sentence: 'We designed a robust architecture.',
//         byAnotherWordsTranslation: 'дуже міцний',
//         sentenceTranslation: 'Ми розробили надійну архітектуру.',
//       ),
//       Phrase(
//         newId: -1,
//         phrase: 'extraordinary',
//         byAnotherWords: 'great/remarkable',
//         sentence: 'He has extraordinary coding abilities.',
//         byAnotherWordsTranslation: 'великий/чудовий',
//         sentenceTranslation: 'Він має надзвичайні здібності до кодування.',
//       ),
//       Phrase(
//         newId: -1,
//         phrase: 'customer-centric',
//         byAnotherWords: 'prioritizing the customers',
//         sentence: 'We are a customer-centric company.',
//         byAnotherWordsTranslation: 'пріоритетність клієнтів',
//         sentenceTranslation: 'Ми клієнтоорієнтована компанія.',
//       ),
//       Phrase(
//         newId: -1,
//         phrase: 'bring to the table',
//         byAnotherWords: 'contribute',
//         sentence: 'What does he bring to the table?',
//         byAnotherWordsTranslation: 'сприяти',
//         sentenceTranslation: 'Чому він сприяє?',
//       ),
//       Phrase(
//         newId: -1,
//         phrase: 'came up',
//         byAnotherWords: 'invent/think of',
//         sentence: 'He came up with a brilliant plan.',
//         byAnotherWordsTranslation: 'придумати',
//         sentenceTranslation: 'Він придумав геніальний план.',
//       ),
//       Phrase(
//         newId: -1,
//         phrase: 'fit my needs',
//         byAnotherWords: 'be useful for your particular case',
//         sentence: "This service doesn't fit my needs.",
//         byAnotherWordsTranslation:
//             'бути корисним для вашого конкретного випадку',
//         sentenceTranslation: 'Ця послуга не відповідає моїм потребам.',
//       ),
//       Phrase(
//         newId: -1,
//         phrase: 'eliminated',
//         byAnotherWords: 'remove/get rid of',
//         sentence: "We've eliminated a few major issues.",
//         byAnotherWordsTranslation: 'видалити/позбутися',
//         sentenceTranslation: 'Ми усунули кілька основних проблем.',
//       ),
//     ];
//   });

//   return mock;
// }

import 'package:mocktail/mocktail.dart';
import 'package:translator/translator.dart';

class MockGoogleTranslator extends Mock implements GoogleTranslator {}

class FakeTranslation extends Fake implements Translation {
  @override
  String get text => 'dart';
}

GoogleTranslator getGoogleTranslator() {
  final mock = MockGoogleTranslator();
  when(
    () => mock.translate(any(), from: any(named: 'from'), to: any(named: 'to')),
  ).thenAnswer((_) async => FakeTranslation());
  return mock;
}

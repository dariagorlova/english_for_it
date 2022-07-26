import 'package:injectable/injectable.dart';

@lazySingleton
class Vocabulary {
  final List<String> _words = [
    'developer',
    'programmer',
    'computer',
  ];

  List<String> getAllWords() => _words;
}

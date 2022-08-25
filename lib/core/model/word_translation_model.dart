class OneWordPair {
  OneWordPair({
    int? newId,
    required this.word,
    required this.translation,
  }) : id = newId ?? -1;

  final String word;
  final String translation;
  final int id;

  Map<String, dynamic> toMap() {
    return {
      'word': word,
      'translation': translation,
    };
  }

  OneWordPair copyWith({
    String? word,
    String? translation,
    int? id,
  }) {
    return OneWordPair(
      word: word ?? this.word,
      translation: translation ?? this.translation,
      newId: id ?? this.id,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneWordPair &&
          runtimeType == other.runtimeType &&
          word == other.word &&
          translation == other.translation &&
          id == other.id;

  @override
  int get hashCode => word.hashCode ^ translation.hashCode ^ id.hashCode;
}

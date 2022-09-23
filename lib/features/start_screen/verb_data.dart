import 'package:injectable/injectable.dart';

class VerbData {
  VerbData({
    required this.verb,
    required this.pastSimple,
    required this.pastParticiple,
  });

  String verb;
  String pastSimple;
  String pastParticiple;
}

@lazySingleton
class IrregularVerbs {
  final List<VerbData> _verbs = [
    VerbData(
      verb: 'Verb',
      pastSimple: 'Past Simple',
      pastParticiple: 'Past Participle',
    ),
    VerbData(
      verb: 'be',
      pastSimple: 'was/were',
      pastParticiple: 'been',
    ),
    VerbData(
      verb: 'do',
      pastSimple: 'did',
      pastParticiple: 'done',
    ),
    VerbData(
      verb: 'go',
      pastSimple: 'went',
      pastParticiple: 'gone',
    ),
    VerbData(
      verb: 'have',
      pastSimple: 'had',
      pastParticiple: 'had',
    ),
    VerbData(
      verb: 'beat',
      pastSimple: 'beat',
      pastParticiple: 'beat',
    ),
    VerbData(
      verb: 'become',
      pastSimple: 'became',
      pastParticiple: 'become',
    ),
    VerbData(
      verb: 'begin',
      pastSimple: 'began',
      pastParticiple: 'begun',
    ),
    VerbData(
      verb: 'break',
      pastSimple: 'broke',
      pastParticiple: 'broken',
    ),
    VerbData(
      verb: 'bring',
      pastSimple: 'brought',
      pastParticiple: 'brought',
    ),
    VerbData(
      verb: 'build',
      pastSimple: 'built',
      pastParticiple: 'built',
    ),
    VerbData(
      verb: 'buy',
      pastSimple: 'bought',
      pastParticiple: 'bought',
    ),
    VerbData(
      verb: 'choose',
      pastSimple: 'chose',
      pastParticiple: 'chosen',
    ),
    VerbData(
      verb: 'come',
      pastSimple: 'came',
      pastParticiple: 'come',
    ),
    VerbData(
      verb: 'cost',
      pastSimple: 'cost',
      pastParticiple: 'cost',
    ),
    VerbData(
      verb: 'drink',
      pastSimple: 'drank',
      pastParticiple: 'drunk',
    ),
    VerbData(
      verb: 'drive',
      pastSimple: 'drove',
      pastParticiple: 'driven',
    ),
    VerbData(
      verb: 'eat',
      pastSimple: 'ate',
      pastParticiple: 'eaten',
    ),
    VerbData(
      verb: 'fall',
      pastSimple: 'fell',
      pastParticiple: 'fallen',
    ),
    VerbData(
      verb: 'feel',
      pastSimple: 'felt',
      pastParticiple: 'felt',
    ),
    VerbData(
      verb: 'find',
      pastSimple: 'found',
      pastParticiple: 'found',
    ),
    VerbData(
      verb: 'fit',
      pastSimple: 'fit',
      pastParticiple: 'fit',
    ),
    VerbData(
      verb: 'fly',
      pastSimple: 'flew',
      pastParticiple: 'flown',
    ),
    VerbData(
      verb: 'forget',
      pastSimple: 'forgot',
      pastParticiple: 'forgotten',
    ),
    VerbData(
      verb: 'get',
      pastSimple: 'got',
      pastParticiple: 'gotten',
    ),
    VerbData(
      verb: 'give',
      pastSimple: 'gave',
      pastParticiple: 'given',
    ),
    VerbData(
      verb: 'grow',
      pastSimple: 'grew',
      pastParticiple: 'grown',
    ),
    VerbData(
      verb: 'hear',
      pastSimple: 'heard',
      pastParticiple: 'heard',
    ),
    VerbData(
      verb: 'hurt',
      pastSimple: 'hurt',
      pastParticiple: 'hurt',
    ),
    VerbData(
      verb: 'keep',
      pastSimple: 'kept',
      pastParticiple: 'kept',
    ),
    VerbData(
      verb: 'know',
      pastSimple: 'knew',
      pastParticiple: 'known',
    ),
    VerbData(
      verb: 'leave',
      pastSimple: 'left',
      pastParticiple: 'left',
    ),
    VerbData(
      verb: 'let',
      pastSimple: 'let',
      pastParticiple: 'let',
    ),
    VerbData(
      verb: 'lose',
      pastSimple: 'lost',
      pastParticiple: 'lost',
    ),
    VerbData(
      verb: 'make',
      pastSimple: 'made',
      pastParticiple: 'made',
    ),
    VerbData(
      verb: 'meet',
      pastSimple: 'met',
      pastParticiple: 'met',
    ),
    VerbData(
      verb: 'pay',
      pastSimple: 'paid',
      pastParticiple: 'paid',
    ),
    VerbData(
      verb: 'put',
      pastSimple: 'put',
      pastParticiple: 'put',
    ),
    VerbData(
      verb: 'read',
      pastSimple: 'read',
      pastParticiple: 'read',
    ),
    VerbData(
      verb: 'ride',
      pastSimple: 'rode',
      pastParticiple: 'ridden',
    ),
    VerbData(
      verb: 'ring',
      pastSimple: 'rang',
      pastParticiple: 'rung',
    ),
    VerbData(
      verb: 'rise',
      pastSimple: 'rose',
      pastParticiple: 'risen',
    ),
    VerbData(
      verb: 'run',
      pastSimple: 'ran',
      pastParticiple: 'run',
    ),
    VerbData(
      verb: 'save',
      pastSimple: 'saved',
      pastParticiple: 'saved',
    ),
    VerbData(
      verb: 'say',
      pastSimple: 'said',
      pastParticiple: 'said',
    ),
    VerbData(
      verb: 'see',
      pastSimple: 'saw',
      pastParticiple: 'seen',
    ),
    VerbData(
      verb: 'send',
      pastSimple: 'sent',
      pastParticiple: 'sent',
    ),
    VerbData(
      verb: 'set',
      pastSimple: 'set',
      pastParticiple: 'set',
    ),
    VerbData(
      verb: 'show',
      pastSimple: 'showed',
      pastParticiple: 'shown',
    ),
    VerbData(
      verb: 'sing',
      pastSimple: 'sang',
      pastParticiple: 'sung',
    ),
    VerbData(
      verb: 'sit',
      pastSimple: 'sat',
      pastParticiple: 'sat',
    ),
    VerbData(
      verb: 'sleep',
      pastSimple: 'slept',
      pastParticiple: 'slept',
    ),
    VerbData(
      verb: 'speak',
      pastSimple: 'spoke',
      pastParticiple: 'spoken',
    ),
    VerbData(
      verb: 'spend',
      pastSimple: 'spent',
      pastParticiple: 'spent',
    ),
    VerbData(
      verb: 'spin',
      pastSimple: 'spun',
      pastParticiple: 'spun',
    ),
    VerbData(
      verb: 'stand',
      pastSimple: 'stood',
      pastParticiple: 'stood',
    ),
    VerbData(
      verb: 'steal',
      pastSimple: 'stole',
      pastParticiple: 'stolen',
    ),
    VerbData(
      verb: 'swim',
      pastSimple: 'swam',
      pastParticiple: 'swum',
    ),
    VerbData(
      verb: 'take',
      pastSimple: 'took',
      pastParticiple: 'taken',
    ),
    VerbData(
      verb: 'teach',
      pastSimple: 'taught',
      pastParticiple: 'taught',
    ),
    VerbData(
      verb: 'tell',
      pastSimple: 'told',
      pastParticiple: 'told',
    ),
    VerbData(
      verb: 'think',
      pastSimple: 'thought',
      pastParticiple: 'thought',
    ),
    VerbData(
      verb: 'throw',
      pastSimple: 'threw',
      pastParticiple: 'thrown',
    ),
    VerbData(
      verb: 'understand',
      pastSimple: 'understood',
      pastParticiple: 'understood',
    ),
    VerbData(
      verb: 'wake',
      pastSimple: 'woke',
      pastParticiple: 'woken',
    ),
    VerbData(
      verb: 'wear',
      pastSimple: 'wore',
      pastParticiple: 'worn',
    ),
    VerbData(
      verb: 'win',
      pastSimple: 'won',
      pastParticiple: 'won',
    ),
    VerbData(
      verb: 'write',
      pastSimple: 'wrote',
      pastParticiple: 'written',
    ),
  ];

  List<VerbData> getAllVerbs() => _verbs;
}

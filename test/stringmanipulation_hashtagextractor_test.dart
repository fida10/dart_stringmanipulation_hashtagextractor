import 'package:stringmanipulation_hashtagextractor/stringmanipulation_hashtagextractor.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });

    test('Return matches from hashtag string', () {
      expect(
          extractAllHashtags(
              "Loving the #sunny weather in #California #travel"),
          ['#sunny', '#California', '#travel']);
    });
    test('Single hashtag', () {
      expect(
          extractAllHashtags(
              "This will have a #single hashtag"),
          ['#single']);
    });
    test('Blank string', () {
      expect(extractAllHashtags(""), []);
    });
  });
}

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:uebungsmappe/Compression/decompress.dart';

void main() {
  test('decompress("")', () {
    expect(decompress(compressedString: ''), '');
  });

  test('decompress("a")', () {
    expect(decompress(compressedString: 'a'), 'a');
  });

  test('decompress("aa")', () {
    expect(decompress(compressedString: 'aa'), 'aa');
  });

  test('Test ob eine Funktion einen Throw auslöst', () {
    expect(
        () => decompress(compressedString: '3a'),
        throwsA(
          predicate((e) => e is Exception && e.toString() == 'Exception: Invalid compressed string'),
        ));
  });

  test('decompress("a3b3")', () {
    expect(decompress(compressedString: 'a3b3'), 'aaabbb');
  });
}

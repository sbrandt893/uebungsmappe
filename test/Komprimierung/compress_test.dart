import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:uebungsmappe/Compression/compress.dart';

void main() {
  test('compress(" ")', () {
    expect(compress(uncompressedString: ''), '');
  });

  test('compress("a")', () {
    expect(compress(uncompressedString: 'a'), 'a');
  });

  test('compress("aa")', () {
    expect(compress(uncompressedString: 'aa'), 'aa');
  });

  test('compress("aaa")', () {
    expect(compress(uncompressedString: 'aaa'), 'a3');
  });

  test('compress("aaabbc")', () {
    expect(compress(uncompressedString: 'aaabbc'), 'a3bbc');
  });

  test('compress("abbccc")', () {
    expect(compress(uncompressedString: 'abbccc'), 'abbc3');
  });

  test('compress("aaaaabbbbbxxxxxchhhtzzaab")', () {
    expect(compress(uncompressedString: 'aaaaabbbbbxxxxxchhhtzzaab'), 'a5b5x5ch3tzzaab');
  });
}

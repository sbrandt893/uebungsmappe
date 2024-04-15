import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:uebungsmappe/Compression/compress.dart';
import 'package:uebungsmappe/Compression/decompress.dart';
import 'package:uebungsmappe/functions.dart';

void main() {
  test('compress() & decompress() over 9000!', () {
    for (int i = 0; i < 10; i++) {
      String testString = generateString();
      final compressedString = compress(uncompressedString: testString);
      final decompressedString = decompress(compressedString: compressedString);
      expect(decompressedString, testString);
      print('Test ${i + 1}: testString(lenght: ${testString.length}) = $testString \n compressedString = $compressedString \n decompressedString = $decompressedString \n');
    }
  });
}

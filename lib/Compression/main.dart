import 'package:uebungsmappe/Compression/compress.dart';
import 'package:uebungsmappe/Compression/decompress.dart';

void main() {
  final testString = 'aaaaabbbbbxxxxxchhhtzzaab';
  final compressedString = compress(uncompressedString: testString);
  final decompressedString = decompress(compressedString: compressedString);
  print('testString = $testString');
  print('compressedString = $compressedString');
  print('decompressedString = $decompressedString');
}

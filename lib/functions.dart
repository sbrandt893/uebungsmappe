import 'dart:math';

String generateString({int maxLength = 64, int maxRepetitions = 8}) {
  String result = '';

  final length = Random().nextInt(maxLength) + 1;
  do {
    final repetitions = Random().nextInt(maxRepetitions) + 1;
    result += String.fromCharCode(97 + (Random().nextInt(26))) * repetitions;
    if (result.length > length) {
      result = result.substring(0, length);
    }
  } while (result.length != length);
  return result;
}

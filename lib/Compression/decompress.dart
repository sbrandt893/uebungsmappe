void main() {
  final compressedString = decompress(compressedString: 'a3b3');
  print(compressedString);
}

String decompress({required String compressedString}) {
  String decompressedString = '';

  if (compressedString.isEmpty || compressedString.length < 2) {
    return compressedString;
  }
  if (int.tryParse(compressedString[0]) != null) {
    throw Exception('Invalid compressed string');
  }

  String actualLetter = compressedString[0];
  String repetitions = '';

  for (int i = 1; i < compressedString.length; i++) {
    if (int.tryParse(compressedString[i]) == null) {
      decompressedString += actualLetter * (repetitions.isEmpty ? 1 : int.parse(repetitions));
      actualLetter = compressedString[i];
      repetitions = '';
    } else {
      repetitions += compressedString[i];
    }
    if (i == compressedString.length - 1) {
      decompressedString += actualLetter * (repetitions.isEmpty ? 1 : int.parse(repetitions));
    }
  }

  return decompressedString;
}



// aa a3 a33 ab ab3 a3bb
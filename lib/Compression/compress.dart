String compress({required String uncompressedString}) {
  String compressedString = '';

  if (uncompressedString.isEmpty || uncompressedString.length < 3) {
    return uncompressedString;
  }

  int count = 1;
  for (int i = 1; i < uncompressedString.length; i++) {
    if (uncompressedString[i] == uncompressedString[i - 1]) {
      count++;
    } else {
      if (count > 2) {
        compressedString += '${uncompressedString[i - 1]}$count';
      } else {
        compressedString += uncompressedString[i - 1] * count;
      }
      count = 1;
    }
    if (i == uncompressedString.length - 1) {
      if (count > 2) {
        compressedString += '${uncompressedString[i]}$count';
      } else {
        compressedString += uncompressedString[i] * count;
      }
    }
  }

  return compressedString;
}

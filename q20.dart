List<String> removeVowels(List<String> strings) {
  const vowels = ['a', 'e', 'i', 'o', 'u'];
  return strings
      .map((string) => string.replaceAll(RegExp('[${vowels.join()}]'), ''))
      .toList();
}

void main() {
  List<String> strings = ['hello', 'milka', 'fasika'];
  List<String> result = removeVowels(strings);

  print('Original strings: $strings');
  print('Result: $result');
}

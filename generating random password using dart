import 'dart:math';

String generatePassword(int length) {
  final rand = Random.secure();
  final chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#%^&*()_+-=,./<>?;:[]{}|';
  return String.fromCharCodes(Iterable.generate(
      length, (_) => chars.codeUnitAt(rand.nextInt(chars.length))));
}

void main() {
  final password = generatePassword(5);
  print(password);
}

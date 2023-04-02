int computeResult(List<int> numbers, int Function(int, int) operation) {
  if (numbers.length < 2) {
    throw Exception('List must contain at least two numbers');
  }

  int result = operation(numbers[0], numbers[1]);
  for (int i = 2; i < numbers.length; i++) {
    result = operation(result, numbers[i]);
  }

  return result;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int result = computeResult(numbers, (a, b) => a + b);

  print('Result: $result');
}

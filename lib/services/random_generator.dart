import 'dart:math';

int nextNumber({required int min, required int max}) =>
    min + Random().nextInt(max - min + 1);

List<int> nextNumbers(int length, {required int min, required int max}) {
  final numbers = <int>{};

  while (numbers.length < length) {
    final number = nextNumber(min: min, max: max);
    numbers.add(number);
  }
  return List.of(numbers);
}

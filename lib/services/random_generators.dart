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

List<int> sixOfFortyNine() {
  final numbers = nextNumbers(6, min: 1, max: 49);
  return List.of(numbers);
}

List<int> fiveOfFortyFive() {
  final numbers = nextNumbers(5, min: 1, max: 45);
  return List.of(numbers);
}

int joker() {
  final number = nextNumber(min: 1, max: 20);
  return number;
}

List<int> fiveOfForty() {
  final numbers = nextNumbers(6, min: 1, max: 40);
  return List.of(numbers);
}

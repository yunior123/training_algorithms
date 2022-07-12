import 'package:test/test.dart';
import 'package:training_algorithms/dart/birthday_cake_candles.dart';

void main() {
  test('birthday cake candles ...', () async {
    final result = birthdayCakeCandles1([3, 2, 1, 3]);
    expect(result, 2);
  });
}

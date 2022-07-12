import 'package:test/test.dart';
import 'package:training_algorithms/dart/simple_array_sum.dart';

void main() {
  test('simple array sum ...', () async {
    final result = simpleArraySum([1, 2, 3, 4, 5]);
    expect(result, 15);
  });
}

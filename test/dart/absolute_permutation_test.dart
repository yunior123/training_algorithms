import 'package:test/test.dart';
import 'package:training_algorithms/dart/absolute_permutation.dart';

void main() {
  test(
    'absolute permutation ...',
    () async {
      final result = absolutePermutation(4, 2);
      expect(result, [3, 4, 1, 2]);
    },
  );
}

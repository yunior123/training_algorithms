import 'package:test/test.dart';
import 'package:training_algorithms/dart/find_permutations.dart';

void main() {
  test(
    'find permutations ...',
    () async {
      final result = findPermutations(
        [
          1,
          2,
          3,
        ],
      );
      expect(
        result,
        [
          [1, 2, 3],
          [1, 3, 2],
          [2, 1, 3],
          [2, 3, 1],
          [3, 2, 1],
          [3, 1, 2],
        ],
      );
    },
  );
}

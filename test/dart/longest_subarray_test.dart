import 'package:test/test.dart';
import 'package:training_algorithms/dart/longest_subarray.dart';

void main() {
  test(
    'longestSubArray ...',
    () async {
      final result = longestSubarray([0, 1, 2, 1, 2, 3]);
      print(result);
      expect(result, 4);
    },
  );
}

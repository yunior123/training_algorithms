// There are  elements, two positive, two negative and one zero.
//Their ratios are ,  and . Results are printed as:
// 0.400000
// 0.400000
// 0.200000

void plusMinus(final List<int> arr) {
  var positiveNumbersCount = 0;
  var negativeNumbersCount = 0;
  var zeroNumbersCount = 0;

  for (var i = 0; i < arr.length; i++) {
    final positive = arr[i] > 0;
    final negative = arr[i] < 0;
    final zero = arr[i] == 0;

    if (positive) {
      positiveNumbersCount++;
    } else if (negative) {
      negativeNumbersCount++;
    } else if (zero) {
      zeroNumbersCount++;
    }
  }

  final num positiveRatio = positiveNumbersCount / arr.length;
  final num negativeRatio = negativeNumbersCount / arr.length;
  final num zeroRatio = zeroNumbersCount / arr.length;

  print(positiveRatio.toStringAsFixed(6));
  print(negativeRatio.toStringAsFixed(6));
  print(zeroRatio.toStringAsFixed(6));
}

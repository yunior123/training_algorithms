import 'dart:math' as math;

int birthdayCakeCandles(final List<int> candles) {
  final max = candles.reduce(math.max);
  return candles.where((final candle) => candle == max).length;
}

int birthdayCakeCandles1(final List<int> candles) {
  var maxValue = 0;
  final numbsCountMap = <int, int>{};

  for (final number in candles) {
    if (numbsCountMap.containsKey(number)) {
      numbsCountMap[number] = numbsCountMap[number]! + 1;
    } else {
      numbsCountMap[number] = 1;
    }
    maxValue = math.max(maxValue, numbsCountMap[number]!);
  }
  return maxValue;
}

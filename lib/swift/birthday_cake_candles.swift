func birthdayCakeCandles1(candles) -> {
  let maxValue = 0;
  let numbsCountMap = [:];

  for (let number in candles) {
    if (numbsCountMap.containsKey(number)) {
      numbsCountMap[number] = numbsCountMap[number]! + 1;
    } else {
      numbsCountMap[number] = 1;
    }
    maxValue = math.max(maxValue, numbsCountMap[number]!);
  }
  return maxValue;
}
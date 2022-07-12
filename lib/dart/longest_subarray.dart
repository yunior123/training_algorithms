int longestSubarray(final List<int> arr) {
  final result = <int>[];
  var maxLength = 0;

  if (arr.isEmpty) {
    return 0;
  }

  var i = 0;
  while (i < arr.length - 1) {
    result.add(arr[i]);
    final distinctCountSet = <int>{};
    distinctCountSet.add(arr[i]);
    var j = i + 1;
    while (j <= arr.length - 1) {
      final isEnd = j == arr.length - 1;
      final isStart = j == 0;
      final condition = isStart ||
          isEnd ||
          arr[j] == arr[j + 1] ||
          arr[j] + 1 == arr[j + 1] ||
          arr[j] - 1 == arr[j - 1];

      if (condition) {
        if (result.isNotEmpty) {
          final previousValue = result.first;
          if (!(previousValue == arr[j])) {
            distinctCountSet.add(arr[j]);
          }
        }

        if (distinctCountSet.length > 2) {
          distinctCountSet.clear();
          result.clear();
          break;
        }
        result.add(arr[j]);
      } else {
        distinctCountSet.clear();
        result.clear();
        break;
      }
      if (maxLength < result.length) {
        maxLength = result.length;
      }
      j += 1;
    }

    i += 1;
  }

  return maxLength;
}

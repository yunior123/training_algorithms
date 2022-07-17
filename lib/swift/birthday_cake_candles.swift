func birthdayCakeCandles1(candles: [Int]) -> {
    var maxValue = 0
    var numbsCountMap:[Int:Int] = [:]
    
    for number in candles {
        let keyExists = numbsCountMap[number]
        
        if let _ = keyExists {
            numbsCountMap[number]! += 1;
        } else {
            numbsCountMap[number] = 1;
        }
        maxValue = max(maxValue, number);
    }

    return numbsCountMap[maxValue]!;
}


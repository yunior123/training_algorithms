func pivotIndex(_ nums: [Int]) -> Int {


    var leftSum = 0
    var rightSum = nums.reduce(0, +)
    
    for i in 0..<nums.count {
        if leftSum == rightSum - nums[i] {
            return i
        }
        leftSum += nums[i]
        rightSum -= nums[i]
    }
    return -1
      
  }
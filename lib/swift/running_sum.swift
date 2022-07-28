func runningSum(_ nums: [Int]) -> [Int] {
    var result: [Int] = []
    
    var i = 0
    for item in nums {
        if i == 0 {
            result.append(item)
        }else{
            result.append(item + result[i-1])
        }
        i += 1
       
    }
    return result
}
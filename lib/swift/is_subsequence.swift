func isSubsequence(_ s: String, _ t: String) -> Bool {
    if s.count == 0 {
        return true
    }
    if s.count > t.count {
        return false
    }
    
    let sMap = s.map { String($0) }
    let tMap = t.map { String($0) }
    
    var sIterator = 0
    var sLetter = sMap[sIterator]
    
    for tLetter in tMap {
        if tLetter == sLetter {
            sIterator += 1
            if sIterator == sMap.count {
                return true
            } else {
                sLetter = sMap[sIterator]
            }
        }
    }
    
    return false
}
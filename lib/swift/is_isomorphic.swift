func isIsomorphic(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }

    var sMap = [Character: Character]()
    var tMap = [Character: Character]()

    for i in 0..<s.count {
        let sChar = s[s.index(s.startIndex, offsetBy: i)]
        let tChar = t[t.index(t.startIndex, offsetBy: i)]

        if sMap[sChar] == nil {
            sMap[sChar] = tChar
        } else if sMap[sChar] != tChar {
            return false
        }
        
        if tMap[tChar] == nil {
            tMap[tChar] = sChar
        } else if tMap[tChar] != sChar {
            return false
        }
    }
    return true

   }


func isIsomorphic1(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }
    var sT = [Character: Character]()
    var tS = [Character: Character]()
    
    var indexS = s.startIndex
    var indexT = t.startIndex
    for i in 0 ..< s.count {
        if i != 0 {
            indexS = s.index(after: indexS)
            indexT = t.index(after: indexT)
        }
        let charS = s[indexS]
        let charT = t[indexT]
        
        let result = (sT[charS] != nil, tS[charT] != nil)
        switch result {
        case (true, true):
            if sT[charS]! != charT || tS[charT]! != charS {
                return false
            }
        case (true, false):
            return false
        case (false, true):
            return false
        case (false, false):
            sT[charS] = charT
            tS[charT] = charS
        }
    }
    
    return true
    
}
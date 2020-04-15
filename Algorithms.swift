// Algorithms

// LINEAR SEARCH

func linearSearch<T: Equatable>(_ a: [T], _ key: T) -> Int? {
    for i in 0 ..< a.count {
        if a[i] == key {
            return i
        }
    }
    return nil
}

func linearsearch(_ array: [Int],_ value: Int) -> Int? {
    for i in 0..< array.count {
        if array[i] == value {
          return i
        }
    }
    return nil
}

// BINARY SEARCH

func ibinarysearch(_ array: [Int],_ value: Int) -> Int? {
    var midLow = 0
    var midHigh = array.count
    
    while midLow < midHigh {
        let mid = midLow + (midHigh - midlow) / 2
        // let mid = (midHigh + midLow) / 2 will surpass int storage capacity once a very large array is given.
        // This math trick solves it
        //     = (vn + v0) / 2
        //     = vn / 2 + v0 / 2  
        //     = vn / 2 + (v0 - v0 / 2)
        //     = v0 + (vn - v0) / 2 this makes sure the int storage capacity does not pass the limit 
        
        if array[half] == value {
            return half
        } else if array[half] < value {
            lowerHalf = half + 1
        } else {
            upperHalf = half
        }
    }
    return nil
}






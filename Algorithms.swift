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
    var lowerHalf = 0
    var upperHalf = array.count
    
    while lowerHalf < upperHalf {
        let half = lowerHalf + (upperHalf - lowerHalf) / 2
        // let brokenHalf = (lowerHalf + upperHalf) / 2 will surpass integer storage capacity once a very large array is given.
        
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






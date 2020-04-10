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







// Algorithms

// Recursion: in computer science is a method of solving a problem where the solution depends on
//            solutions to smaller instances of the same problem

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
    var midHigh = array.count - 1
    
    while midLow < midHigh {
        let mid = midLow + (midHigh - midlow) / 2
        // let mid = (midHigh + midLow) / 2 will surpass int storage capacity once a very large array is given.
        // This math trick solves it
        //     = (vn + v0) / 2
        //     = vn / 2 + v0 / 2  
        //     = vn / 2 + (v0 - v0 / 2)
        //     = v0 + (vn - v0) / 2 this makes sure the int storage capacity does not pass the limit 
        
        if array[mid] == value {
            return mid
        } else if array[mid] < value {
            midLow = mid + 1
        } else {
            midHigh = mid - 1
        }
    }
    return nil
}


// FIBONACCI NUMBER

// Recursive Fibonacci Number
func rFibNum(_ position: Int) -> Int {
    if position == 0 || position == 1 {
        return position
    } else {
        let fib = getFib(position - 1) + getFib(position - 2)
        return fib
    }
}

// This is how the recursion takes place
// position = 4
// getFib(4) = ?
// fib = gF(3) + gF(2)
// fib = gF(2) + gF(1) + gF(1) + gF(0)
// fib = gF(1) + gF(0) + gF(1) + gF(1) + gF(0)
// fib =   1   +   0   +   1   +   1   +   0
// fib = 3
// getFib(4) = 3

// Iterative Fibonacci Number
func iFibNum(_ position: Int) -> Int {
    if position == 0 || position == 1 {
        return position
    }
    
    first = 0, second = 1
    
    for _ in 2...position {
        fib = first + second
        first = second
        second = fib
    }
    return fib
}

// This is how the iteration takes place
// position = 4
// getFib(4) = ?
// (i = 2) fib = 0 + 1      ->     first = 1     ->     second = 1
// (i = 3) fib = 1 + 1      ->     first = 1     ->     second = 2
// (i = 4) fib = 1 + 2      ->     first = 2     ->     second = 3
// fib = 3
// getFib(4) = 3


// BUBBLE SORTING
func iBubbleSort(_ array: [Int]) -> [Int] {
    
    var a = array, temp = 0
    let iter = a.count
    
    for i in 1...iter {
        for r in 0..<(iter - i) {
            if a[r] > a[r+1] {
                temp = a[r+1]
                a[r+1] = a[r]
                a[r] = temp
            }
        }
    }
    return a
}


// CHEATSHEET





// ARRAYS

var emptyArray = [Int]()                                 // [] -> Empty Array
var threeInts: [Int] = [1, 2, 4]                         // [1, 2, 4] -> Creating an Array with a Array Literals
threeInts.append(3)                                      // [1, 2, 4, 3] -> Adding value at end of Array.
threeInts.insert(3, at: 2)                               // [1, 2, 3, 4, 3] -> Inserting value at index position
threeInts.insert(contentsOf: 6...11, at: 4)              // [1, 2, 3, 4, 3, 6, 7, 8, 9, 10] -> Inserts sequence of elements at the specified position.
threeInts.removeFirst()                                  // [2, 3, 4, 3, 6, 7, 8, 9, 10] -> Remove first
threeInts.removeLast()                                   // [2, 3, 4, 3, 6, 7, 8, 9] -> Remove last
threeInts.remove(at: 3)                                  // [2, 3, 4, 6, 7, 8, 9] -> Removing value at index position
threeInts.removeSubrange(4..<6)                          // [2, 3, 4, 6, 9] -> Remove any value frm the range 4..<6
threeInts.removeAll(where: { $0 % 2 != 0 })              // [2, 4, 6] -> Remove any value based on the where criteria, odd values
var threeZeros = Array(repeating: 0, count: 3)           // [0, 0, 0] -> Array with default values 
var sevenInts = threeZeros + threeInts                   // [0, 0, 0, 2, 4, 6] -> Adding two arrays together
var intsSeven = threeInts.append(contentsOf: threeZeros) // [2, 4, 6, 0, 0, 0] -> Another way to add arrays together
var strideSev = threeInts.append(contentsOf: stride(from: 8, through: 12, by: 2))  // [2, 4, 6, 8, 10, 12]

if let i = intsSeven.firstIndex(of: 0) {                 // [2, 4, 6, 8, 0, 0] -> Replace first existing value with new one
    students[i] = 8
}

threeInts.isEmpty                                        // False
emptyArray.isEmpty                                       // True
emptyArray.count                                         // 0 -> Number of elements in the array.
//CAPACITY - total number of elements that the array can contain without allocating new storage
strideSev.capacity                                       // 7 -> 
strideSev.capacity                                       // 9









// CHEATSHEET


// STRINGS
// Strings are value types in Swift
var emptyString = ""                                     // Empty string literal
var anotherEmptyString = String()                        // Initializer syntax
emptyString.isEmpty                                      // Check if String is empty
emptyString += "Not empty anymore"                       // String mutability "Not empty anymore"
// variableString is now "Horse and carriage"
var aString: String = "Hello"                            // String Literals
let quotation = """ Please your Majesty? \#(emptyString)""" // Multiline String Literals? Not empty anymore.

// Special Characters
let dollarSign = "\u{24}"                                // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"                              // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}"                         // 💖, Unicode scalar U+1F496
let regionalIndicatorForUS = "\u{1F1FA}\u{1F1F8}"        // Unicode for 🇺🇸
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
               // "Imagination is more important than knowledge" - Einstein
let dogChars = ["D","o","g","!","🐶"]
let dogString = String[dogChars]                         // Concatenates all characters into a string -> "Dog!🐶"
for character in "Dog!🐶" { print(character) }           // Iterates every character
let value1 = 5, value2 = 4                               // Declaring multiple variables in one line
print("5 times 4 is \(value1 * value2)")                 // INTERPOLATION -> "5 times 4 is 20"
print(#"6 times 7 is \#(6 * 7)."#)                       // Extended delimiters INTERPOLATION -> "6 times 7 is 42"
let dogStringCount = dogString.count                     // Count the number of charaters in a string which is 5
dogString[dogString.startIndex]                          // D
dogString[dogString.endIndex]                            // Error
dogString[dogString.index(before: dogString.endIndex)]   // 🐶
dogString[dogString.index(after: dogString.startIndex)]  // o
let index = dogString.index(dogString.startIndex, offsetBy: 3) 
dogString[index]                                         // !





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
threeInts.replaceSubrange(1...2, with: repeatElement(0, count: 5))       // [2, 0, 0, 0, 0, 0]
threeInts.replaceSubrange(1...2, with: [4, 6])           // [2, 4, 6] NOTE: stride() does not work for with:
var threeZeros = Array(repeating: 0, count: 3)           // [0, 0, 0] -> Array with default values 
var sixInts = threeZeros + threeInts                     // [0, 0, 0, 2, 4, 6] -> Adding two arrays together
var intsSix = threeInts.append(contentsOf: threeZeros)   // [2, 4, 6, 0, 0, 0] -> Another way to add arrays together
var strideSix = threeInts.append(contentsOf: stride(from: 8, through: 12, by: 2))  // [2, 4, 6, 8, 10, 12]

intsSix[0]                                               // 2 -> First index value
intsSix.first or intsSix.first!                          // optional(2) or 2
intsSix.first(where: { $0 == 0 })                        // 0 -> First value
intsSix.firstIndex(of: 0)                                // 3 -> First value index
intsSix.firstIndex(where: { $0 % 2 == 0 })               // 2 -> First value index of even numbers
if let i = intsSix.firstIndex(of: 0) {                   // [2, 4, 6, 7, 0, 0] -> Replace first existing value with new one
    students[i] = 7 }

intsSix.last or intsSix.last!                             // optional(0) or 0
intsSix.last(where: { $0 % 2 == 0 })                     // 6 -> Last value
intsSix.lastIndex(of: 0)                                 // 5 -> Last value index
intsSix.lastIndex(where: { $0 % 2 == 0 })                // 2 -> Last value index of even numbers
if let i = intsSix.lastIndex(of: 0) {                    // [2, 4, 6, 7, 0, 9] -> Replace last existing value with new one
    students[i] = 9 }

threeInts.isEmpty                                        // False
emptyArray.isEmpty                                       // True
emptyArray.count                                         // 0 -> Number of elements in the array.
//CAPACITY - total number of elements that the array can contain without allocating new storage
strideSix.capacity                                       // 7 
strideSix.capacity                                       // 9

strideSix.contains(0)                                    // False
intsSix.contains(where: { $0 % 2 == 0 })                 // True
intsSix.allSatisfy(where: { $0 % 2 == 0 })               // False

intsSix.min()                                            // 0
intsSix.max()                                            // 9
var minInt = intsSix.min { a, b in a < b }               // optional(1) -> use minInt! to return 1
var maxInt = intsSix.max { a, b in a < b }               // optional(9) -> use maxInt! to return 9


// ARRAY SUBSCRITPS

intsSix[3...5] = [5, 3, 1]                               // [2, 4, 6, 5, 3, 1]
intsSix[3...5] = [5, 3, 1, 0, 0]                         // [2, 4, 5, 5, 3, 1, 0, 0]









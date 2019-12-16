// REVERSED SUBSTRINGS -> String(str.reversed())

var normal = "madam"

var reverse = normal.reversed() // It is a ReversedCollection<String> type and not a String one
normal == reverse // return an error

var reverse_right = String(normal.reversed())
normal == reverse_right // returns true

/*
Converting strings to all-lowercase or all-uppercase is great when you want user input to be case-insensitive. 
And reversing a string is useful if you want to see if two strings are palindromes. Note in the last example, 
we need to use str.reversed() with a String initializer. If you look closely at the documentation for reversed(), 
you'll see that it actually returns a ReversedCollection instead of a String. You won't need to use this type directly, 
but just know that Swift uses it "under the hood" for efficiency. You can simply use the String() initializer to convert 
the result into a usable string.
*/

// REPLACING SUBSTRINGS
/*
We can also modify the middle of strings. A common manipulation method is replacingOccurrences(of: String, with: String), 
which allows us to swap out one substring with another.
*/
let verbose = "We hope you are very excited to learn Swift. It's a very fun and very useful skill. Soon enough, you'll be writing your very own app!"
let better = verbose.replacingOccurrences(of: "very ", with: "")

// FOUR WAYS TO INITIATE AN ARRAY

// The full type name
var numbers = Array<Double>()

// The short type name
var moreNumbers = [Double]()

// Array literal syntax
let differentNumbers = [97.4, 99.0, 100.0]

// Array that is preinitialized with a fixed number of default values -> Array(repeating: value, count: value)
var digitCounts = Array(repeating: 0, count: 20)



// TRIMMING CHARACTERS

var message = "   Be back later!        "

// Removing empty characters from the end of a string.
// Trimming the end of a string
while message.last == " " {
    message.removeLast()
}


// Removing empty characters from the beginning of a string.
// Trimming the beginning of a string
while message.first == " " {
    message.removeFirst()
}


// ARRAYS OF STRINGS
/*
To add single elements to the end of an array, use the append(_:) method. 
Add multiple elements at the same time by passing another array or a sequence of any kind to the append(contentsOf:) method.
*/

var students = ["Joe", "Ricardo", "Maria", "Elana"]

// ADDING SINGLE ELEMENT
// Adding single elements to the end of an array -> ARRAY.append(string)
students.append("Tax") // ["Joe", "Ricardo", "Maria", "Elana", "Tax"]

// ADDING MULTIPLE ELEMENTS
// Adding multiple elements to the end of an array -> ARRAY.append(contentsOf: [string, string, ...])
students.append(contentsOf: ["First", "Second"]) // ["Joe", "Ricardo", "Maria", "Elana", "Tax", "First", "Second"]

// INSERTING ELEMENTS
// Inserting single elements to a specific index in an array -> ARRAY.insert("string", at: index)
students.insert("Ryan", at: 2) // ["Joe", "Ricardo", "Ryan", "Maria", "Elana", "Tax", "First", "Second"]

// REMOVING ELEMENTS
// Removing elements from an array from an specific index -> remove(at:), removeSubrange(_:)
students.remove(at: 0) //["Ricardo", "Ryan", "Maria", "Elana", "Tax", "First", "Second"]

// Removing the last elements from an array -> removeLast().
students.removeLast() //["Ricardo", "Ryan", "Maria", "Elana", "Tax", "First"]






// REVIEW
/*
Array ------> is an ordered list of items. It can have repeated values.
Dictionary -> is a collection of distinct key-valued pairs.
Set --------> is an unordered list of distinctive values,
*/

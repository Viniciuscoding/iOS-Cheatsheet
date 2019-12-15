# iOS-Cheatsheet
Cheatsheet from basic to advanced iOS documentation because Apples' documentation is horrible and lack examples


Reversed Substrings

String(str.reversed())

Converting strings to all-lowercase or all-uppercase is great when you want user input to be case-insensitive. And reversing a string is useful if you want to see if two strings are palindromes.
Note in the last example, we need to use str.reversed() with a String initializer. If you look closely at the documentation for reversed(), you'll see that it actually returns a ReversedCollection instead of a String. You won't need to use this type directly, but just know that Swift uses it "under the hood" for efficiency. You can simply use the String() initializer to convert the result into a usable string.

## Replacing Substrings
We can also modify the middle of strings. A common manipulation method is replacingOccurrences(of: String, with: String), which allows us to swap out one substring with another.
let verbose = "We hope you are very excited to learn Swift. It's a very fun and very useful skill. Soon enough, you'll be writing your very own app!"

  let better = verbose.replacingOccurrences(of: "very ", with: "")

Array is an ordered list of items. It can have repeated values.
Dictionary is a collection of distinct key-valued pairs.
Set is an unordered list of distinctive values,

## Three ways to initiate an array

#### The verbose way
var numbers = Array<Double>()

var moreNumbers = [Double]()

#### Array literal syntax
let differentNumbers = [97.4, 99.0, 100.0]



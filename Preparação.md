# Preparação Para Entrevistas

#### 1. What Swift is different than Object-C
- Program Oriented Programming Language (POP)
- Simple to read and learn
- Type safe language
- Auto import of files
- No pointers to confuse
- Better memory management
- Optionals ake applications crash free and bug free
- Faster and safe


#### 2. What is new in Swift 4?
- Multiline String
- Codable
- Strings are collection types
- One sided range operators

#### 3. What is new in Swift 4.2?
- Simpler to generate random numbers using random()
- CaseIterable protocol for enums
- Dynamic member lookup
- Boolean Toggling alters the value
- allSatisfy new higher order functions
- Easy to remove array elements
- #warning and #error diagnostics
- Conditional Conformance of Protocols

#### 4. What are the data types in Swift
```
Int     Character   Array       Any
Float   String      Dictionary
Double  Bool        Set
```
#### 5. What is type inference
- It is a feature in swift compile that identifies the data type of value privided
let age = 10
var right = False

#### 6. What is type annotation?
- The process of explicity specifying the type of a variable
```
let age: Int = 10
var right: Bool = False
```
#### 7. What is Tuple?
- The process of groupin multiple data type values together as a single variable 
```
let course = ("Swift", 5)   let course = (name: "Swift", version: 5)  let course(name,version)=("Swift", 5)
print(course.0) // Swift    print(course.name)    // Swift            print(name)    // Swift
print(course.1) // 5        print(course.version) // 5                print(version) // 5
```
### 8. String Interpolation?
- The process of embedding values to a string
var swiftVersion = 5
var answer = "I used the Swift version /(swiftVersion)"

### 9. What is Optional?
- Optional variable can have values or no values (nil). Use the symbol ? after **type annotation** to declare an optional
``` var swiftVersion: Int? =  5``` This means there is an int 5 or nil. 
NOTE: Optional variables must be declared as variable using ```**var**```
### 10. What is optional unwrapping?
- The process of extracting the underlying value of an optional variable

### 11. What is Implict, Explicit and Force (Optional or Guard) unwrapping?
- **Implict Unwrapping:** The optional variable definitely has a value
```let swiftVersion: Int!```
- **Explict Unwrapping:**
- **Optional Unwrapping:**
``` if let unwrapped = swiftVersion { print("The Swift version is \(unwrapped)") } ```
- **Guard Unwrapping:**
``` 
    guard let unwrapped = swiftVersion else {
      print("Optional has no value")
      return
    }
    print("Optional has a value")
```

### 12. Optional Binding vs Guard Binding
``` 
if let unwrapped = swiftVersion {                     guard let unwrapped = swiftVersion else {
  print("The Swift version is \(unwrapped)")              print(unwrapped) //unwrapped is not accessible
}                                                         return
print(unwrapped) //unwrapped is not accessible here   } print(unwrapped) //unwrapped is accessible
```
### 12. What is Optional Chaining
``` let res = anOptional?.subOptional?.subOptional ```
### 13. What is nil Coalescing Operator (??) ?
- It is the process of substituing a value if option does not contain a value
var swiftVersion: Int?
swiftVersion = 5
let unwrapped = swiftVersion ?? 0

### 14. WHat is Guard?
- It is one of the optional unwrapping techniques 
```
guard let unwrapped = swiftVersion else {
    print("Optional has no value")
    return
}
print("Optional has a value")
```
### 15. What is Enum?
- It is user defined data type with user specified values
```
                         **Enum with raw values**             **Enum with associated values**
enum WeekDay {             enum WeekDay: Int {                  enum Errors { 
    case MONDAY,TUESDAY       case MONDAY = 1, TUESDAY = 2          case unknownError
    case THURSDAY             case THURSDAY = 4                     case httpError(Int, String)
    case FRIDAY               case FRIDAY = 5                       case networkError(String)
}                          }                                    }
```
### 16. What is Struct?
- It is a keyword to create user defined datatype. Structure variables are value types. It can also contain methods.
```
struct Course() {                                        struct Course() {
    var name = "Swift"                                      var name = "Swift"
    var price = 49.99                                       var price = 49.99
    funct cantModifyProperties {                            mutaiting funct cantModifyProperties {
        print("To modify properties you need to use")           name = "Swift 5"
        print("The keyword **mutating**")                       price = 10.00
    }                                                       }
}
```
### 17. What is typealiasing?
- It is the process of renaming an existing datatype
```
typealiaese BigInt = Int              typealiases Text = String
var newIntType: BigInt = 100          var newStringType: Text = "Text is now a String type"
```
### 18. What is Class?
- It is a keyword used to create a custom user defined datatype. Classes are reference types.

### 19. What is the difference between Struct and Class
```
|---------------------------------------------|----------------------------------------------|
|                 **Struct**                  |                 **Class**                    |
|---------------------------------------------|----------------------------------------------|
| 1. Value types                              |   1. Reference types                         |
| 2. Does not allow inheretence               |   2. Allows inheretance                      |
| 3. Structure variable values are copied     |   3. Variable reference / address is copied  |
| when passed them as argument to a method    |   when passing them as argument to a method  |
| 4. Deinitializers are not available         |   4. Deinitializers are available            |
| 5. Passed by value                          |   5. Passed by reference                     |
|---------------------------------------------|----------------------------------------------|
```
### 20. What is Property?
- They are values in a class, structure, or enumeration. It is variable in an object which holds values of that object.

### 21. What are Stored, Static, Computed and Lazy properties?
- **Stored Properties:** store constant and variable values as part of an instance.
- **Computed Property:** calculates (rather than store) a value.
- **Lazy Property:** a property whose memory is allocated when it is accessed or used.
- **Static Property:** Because static methods belong to the struct itself rather than to instances of that struct, you can't use it to access any non-static properties from the struct.
Class and structure level properties
Accessed over Class or Property name
Only accessible in class or structure level methods
```
class Person {
    static let clothsMass = 0.36  // static property
    var actualMass = 7.8          // stored property
    lazy var gravityEarth = 9.8   // lazy property
    var totalWeight: Double {     // computed property
        return clothsWeight * actualWeight * gravityEarth
    }
}
```
### 22. What is function?
- It is a block of statements that performs some specific task. Functions are global

```
func name(parameter1, parameter2,...) -> return_type {
    ... function_body
}
```
### 23. What is a method?
- It is a function associated to an object (class)

### 24. What are instance methods and type/class methods
- Instance methods are associated to with objects
- type or class methods are associated with datatypes

### 25. What is a default values for an input parameter and infinite ones?
```
funct classTotalWeight(gravity: Double = 9.8, studentsMass: ...)
    totalWeight: Double = 0
    for mass in studentsMass {
        totalWeight = totalWeight + mass * gravity
    }
    return totalWeight
}
```
### 26. What are Subscripts
- A shortcut way to access struct / enum / class's collections, sequences and lists 
```
class Stack {                                               Example
    var itemHolder = [0, 1, 2, 3, 4, 5]                     let theStack = Stack()
    subscript(index: Int) -> Int {                          theStack.itemHolder[5] // returns 5
        return itemHolder[index]
    }                                      with subscrit -> theStack[5] // returns 5
}
```
###  27. What is Generic Function?
- Generic code enables you to write flexible, reusable functions and types that can work with any type, subject to requirements that you define. You can write code that avoids duplication and expresses its intent in a clear, abstracted manner. One of the most powerful features of Swift, and much of the Swift standard library is built with generic code
```
func add(a: Int, b: Int) -> Int { return a + b }        \    THIS IS A GENERIC FUNCTION
func add(a: Float, b: Float) -> Float { return a + b }   --> func add<T>(a: T, b: T) -> T { return a + b }
func add(a: Double, b: Double)->Double{ return a + b }  /                 
```

### 30. What is Closure? VERY COMPLEX and THERE MANY DIFFERENT ONES!!!! MAKE SURE TO STUDY MORE ABOUT IT!!!!



### 000. What are the terms used in inheretence?

superclass	    A class that is inherited from
subclass	    A class that inherits from another class (the superclass)
parent class	A class's superclass
child class	    A class that descended (inherited directly) from a parent class.
descendant	    A class that inherited from an ancestor
ancestor	    A class that has child or descendent classes
root class	    A class with no superclass
leaf class	    A class with no subclasses
hierarchy	    A tree of inheritance relationships

### 001. What is Polymorphism?
- Inheritance, or the ability of one class to take on the properties and methods of a superclass

### 002. What is Inheretence?
- It allows one class to take on the properties and methods of another class, as well as add its own functionality

### 31. What is a Subscript?
- Subscript is a shortcut way to access structs, enums, classes colletions, sequences and lists
```
class Stack {
    let itemHolder = [0, 1, 2, 3, 4]
    subscript (index: Int) -> Int {
        return itemHolder[index]
    }
}

let aStack = Stack()
aStack.itemHodler[5]

// USing subscript
aStack[5]
```

### 32. What is Generic Functions?
- A method which is capable of taking different datatypes and perform operations called

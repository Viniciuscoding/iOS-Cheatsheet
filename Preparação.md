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
let course = ("Swift", 5)    let course = (name: "Swift", version: 5)  let course(name, version) = ("Swift", 5)
print(course.0) // Swift     print(course.name)    // Swift            print(name)    // Swift
print(course.1) // 5         print(course.version) // 5                print(version) // 5
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
  print("The Swift version is \(unwrapped)")              print(unwrapped) //unwrapped is not accessible here
}                                                         return
print(unwrapped) //unwrapped is not accessible here   } print(unwrapped) //unwrapped is accessible here
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
























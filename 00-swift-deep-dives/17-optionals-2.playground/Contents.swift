import UIKit

let myOptional: String?
myOptional = "Angela"

// How to solve;
// 1. Force unwrapping !
// 2. check for nil value   if myOptional != nil {optional!}
// 3. Optional binding

if let safeOptional = myOptional {
    let text: String = safeOptional
    let text2: String = safeOptional
    print(safeOptional)
} else {
    print("myOptional was found to be nil")
}

// 4. nil coalescinng operator
let myOptional2: String?
myOptional2 = nil
var text: String = myOptional2 ?? "Default value"

print(text) // Default value

text = "no longer default"
print(text) //no longer default


struct MyOptionalStruct {
    var property = "123"
    func method() {
        print("I am the struct method")
    }
}
var myOptional4: MyOptionalStruct?

myOptional4 = MyOptionalStruct()

// 5. Optional chaining
print(myOptional4?.property) // Optional("123")

myOptional4 = nil
print(myOptional4?.property) // prints nil but no crash


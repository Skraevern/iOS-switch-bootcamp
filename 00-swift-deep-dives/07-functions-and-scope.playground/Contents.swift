import UIKit

// func getMilk() { do stuff }

func greeting() {
    print("Hello")
}

greeting()

for number in 1...4 {
    greeting()
}

// Scope
func greeting1() {
    var myName = "Lars"
    print(myName)
}
print(myName)

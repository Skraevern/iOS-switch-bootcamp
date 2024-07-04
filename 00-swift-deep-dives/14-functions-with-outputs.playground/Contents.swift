import UIKit

func getMilk(money: Int) -> Int {
    let change = money - 2
    return change
}

print(getMilk(money: 10))
// 8

func greeting(name: String) -> Bool {
    if name == "Angela" || name == "Jack Bauer" {
        return true
    } else {
        return false
    }
}

var doorShouldOpen = greeting(name: "Angela")
// true

import UIKit
// 1. Not closure
func add (n1: Int, n2: Int) -> Int {
    return n1 + n2
}
var sum = add(n1: 2, n2: 3) // 5

func mult (n1: Int, n2: Int) -> Int {
    return n1 * n2
}

func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

var sum2 = calculator(n1: 2, n2: 3, operation: add) // 5

var sum3 = calculator(n1: 2, n2: 3, operation: mult) // 6

// 2. Closure

// func subtract (n1: Int, n2: Int) -> Int{}

calculator(n1: 2, n2: 3, operation: { (n1: Int, n2: Int) -> Int in
    return n1 - n2
})
 // shorthand
calculator(n1: 2, n2: 3, operation: { (no1, no2) in no1 - no2}) // -1

//shorter'
calculator(n1: 2, n2: 3, operation: {$0 - $1}) // -1

//shortest
calculator(n1: 2, n2: 3) {$0 - $1}


let array = [6,2,3,9,4,1]
func addOne(n1: Int) -> Int {
    return n1 + 1
}

print(array.map(addOne)) // [7, 3, 4, 10, 5, 2]

print(array.map{$0 + 1}) // [7, 3, 4, 10, 5, 2]

print(array.map{"\($0)"}) // ["6", "2", "3", "9", "4", "1")

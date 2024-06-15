import UIKit

var greeting = "Hello, playground"

// Closed range ...
// Int.random(in: lowerest...highest)
Int.random(in: 1...4) // 1, 2, 3 or 4

// Half open operator
Int.random(in: 1..<4) // 1, 2 or 3

// Random float
Float.random(in: 1...2) // 1,356429 Can be 1.000 and 2.0000
Float.random(in: 1..<2) // Can be 1.000 and 1.99999

// Random bool
Bool.random() // true or false

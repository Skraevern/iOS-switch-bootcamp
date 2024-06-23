import UIKit

// Uncertenties = optionals.

var harness: String? // Optional prototype. Can contain string and nil

// var player1: String = nil //'nil' cannot initialize specified type 'String'

var player1: String? = nil
print(player1) // Expression implicitly coerced from 'String?' to 'Any'
player1 = "jackbauerisawesome"
print(player1) // "Optional("jackbauerisawesome")

print(player1!) // jackbauerisawesome

player1 = nil
print(player1) // nil
print(player1!) // error: Execution was interrupted, reason: EXC_BREAKPOINT (code=1, subcode=0x192ffed38).
// Can`t use variable which is nil.

// Should use this:
if player1 != nil {
    print(player1!)
}

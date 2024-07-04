/*
 [Coding Exercise] Functions Part 3
 Using what you have learnt about functions which can have outputs, create a function called isOdd(n: Int).
 For any given whole number passed to the function, e.g.
 isOdd(n: 5)
 The function will test to see if the number is odd. If it is, then it should output true otherwise it should output false. These are Booleans and not Strings.
 NOTE: You should not write any print statements. The tests will only pass if the result is an output.
 Hint: You can use the remainder operator to check if something can be cleanly divided.
 https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID64
 Without changing any of the existing code, your function should be able to output the result.
 Try out some code in this Repl.it: https://repl.it/@appbrewery/functions-3-exercise#main.swift
 */

import UIKit

func isOdd(n: Int) -> Bool {
    if n % 2 == 0 {
        return false
    } else {
        return true
    }
}
print(isOdd(n: 2)) // false
print(isOdd(n: 3)) // true

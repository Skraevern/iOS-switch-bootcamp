import UIKit

/*
 [Coding Exercise] Switch
 Create a program that takes a number (Int) as an input and prints the corresponding day of the week using a Switch statement.
 e.g. If the input was 5
 Then the function should print:
 "Friday"
 If the input number does not match a day of the week then your program should print "Error".
 You can try out your code here: https://repl.it/@appbrewery/switch-exercise#main.swift
 Hint: The weekday printed needs to have the first letter capitalised and spelt correctly for the tests to pass.

 */

////Don't change this
var aNumber =  Int(readLine()!)!

func dayOfTheWeek(day: Int) {
  
  //Write your code inside this function.

    switch day {
    case 1:
        print("Monday")
    case 2:
        print("Tuesday")
    case 3:
        print("Wednesday")
    case 4:
        print("Thursday")
    case 5:
        print("Friday")
    case 6:
        print("Saturday")
    case 7:
        print("Sunday")
    default:
        print("Error")
    }
  
  
}

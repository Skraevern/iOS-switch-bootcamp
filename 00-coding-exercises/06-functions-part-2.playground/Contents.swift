import UIKit
/*
[Coding Exercise] Functions Part 2
In this coding exercise, you're going to create a simple calculator. You will need to create 4 functions so that when you run the code, a and b are added/subtracted/multiplied and divided by each other.
To test your code, you can add some inputs using the button in the top right corner of the console, shown in the example below:
It will ask you for some input values. The values need to be numbers and they will be substituted into your code as the variables a and b. The numbers will need to be on separate lines.
e.g. If
a = 3 and b = 4
This is what you would expect to be printed from the calculator:
7
-1
12
0.75
Because:
3 + 4 = 7,
3 - 4 = -1,
3 x 4 = 12,
3 ÷ 4 = 0.75
You can try out your code here: https://repl.it/@appbrewery/functions-2-exercise#main.swift
NOTE: For the solution to pass the tests, you cannot alter any of the existing code below. a and b will come from the testing code. You should not modify them here. All you need to do is write the 4 functions. Also, there cannot be anything else printed in the console other than the 4 solutions as per the example above.

Did you get 0 for the last value? Hint: you'll need to remind yourself about Swift data types and maybe this link to Google will help.
*/

//Don't change this code:
func calculator() {
  let a = Int(readLine()!)! //First input
  let b = Int(readLine()!)! //Second input
  
  add(n1: a, n2: b)
  subtract(n1: a, n2: b)
  multiply(n1: a, n2: b)
  divide(n1: a, n2: b)
  
}

//Write your code below this line to make the above function calls work.

func add(n1: Int, n2: Int) {
    print(n1 + n2)
}
func subtract(n1: Int, n2: Int) {
    print(n1 - n2)
}
func multiply(n1: Int, n2: Int) {
    print(n1 * n2)
}
func divide(n1: Int, n2: Int) {
    let decimalN1 = Double(n1)
    let decimalN2 = Double(n2)
    print(decimalN1 / decimalN2)
}

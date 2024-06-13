/*
[Coding Exercise] Variables
Without touching any of the existing code, can you write 3 lines of code to switch around the values held inside the two variables a and b?
Important: You cannot use any numbers in your code. e.g. You can't just write
    a = 8
    b = 5

Press Run to see the output in the console. If you have written the code correctly, it should print:
    a: 8
    b: 5
Once you're happy with your code, you can complete the code below and click "Check Solution".
*/

import UIKit

var greeting = "Hello, playground"

func exercise() {

    var a = 5
    var b = 8
    
    //Write your code here.
    //Dont change any of the existing code.

    var c = a
    a = b
    b = c

    print("a: \(a)")
    print("b: \(b)")
    
}

exercise()

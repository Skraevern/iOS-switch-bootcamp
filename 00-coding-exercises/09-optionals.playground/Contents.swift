/*
 [Coding Exercise] Optionals
 If you have a dictionary with 3 student names and their test scores, can you print the highest score?
 e.g. if
 studentsAndscores = ["Amy": 88, "James": 55, "Helen": 99]
 Then your function should print 99.
 But you don't know what the scores are, so your program has to handle all possibilities!
 Hint: When you get the value out of a dictionary using a key, the value that comes out is an Optional!
 Be sure to test your code using sample inputs and try out your code here: https://repl.it/@appbrewery/optionals-exercise#main.swift

 */

import UIKit

//Don't change this
var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]

func highestScore(scores: [String: Int]) {
  
  //Write your code here.
    let a = studentsAndScores["Amy"]!
    let b = studentsAndScores["James"]!
    let c = studentsAndScores["Helen"]!
    var temp = 0
    //If a is greater than b
      if a > temp {
    //And a is also greater than c
        temp = a
    }
      if b > temp {
        temp = b
    }
      if c > temp {
        temp = c
    }
    print(temp)

}
